import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:organic_chemistry_jee/data/catalog.dart';
import 'package:organic_chemistry_jee/main.dart';
import 'package:organic_chemistry_jee/screens/question_screen.dart';
import 'package:organic_chemistry_jee/state/progress_store.dart';
import 'package:organic_chemistry_jee/widgets/sketch_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('home lists every chapter and opens the inked one', (tester) async {
    tester.view.physicalSize = const Size(440, 4200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final store = ProgressStore(persist: false);
    await tester.pumpWidget(OrganicNotebookApp(store: store));
    await tester.pumpAndSettle();

    expect(find.text('Organic notebook'), findsOneWidget);
    for (final chapter in chapters) {
      expect(find.text(chapter.title), findsOneWidget);
    }
    expect(find.text('Coming soon'), findsNWidgets(9));

    await tester.tap(find.byKey(const Key('chapter-halides')));
    await tester.pumpAndSettle();
    expect(find.text('This chapter is not inked yet.'), findsOneWidget);
    await tester.tap(find.text('Back to the list'));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('chapter-goc')));
    await tester.pumpAndSettle();
    expect(find.text('Level 1'), findsOneWidget);
    expect(find.text('Level 2'), findsOneWidget);
    expect(find.text('Level 3'), findsOneWidget);
    expect(find.byKey(const Key('exercise-goc-l1-e1')), findsOneWidget);

    await tester.tap(find.byKey(const Key('exercise-goc-l1-e1')));
    await tester.pumpAndSettle();
    expect(find.text('Level 1 · Exercise 1'), findsOneWidget);
    expect(find.byKey(const Key('box-goc-l1-e1-q1')), findsOneWidget);

    await tester.tap(find.byKey(const Key('box-goc-l1-e1-q1')));
    await tester.pumpAndSettle();
    expect(find.text('In the drawing of propyne, how many carbon atoms are sp hybridised?'), findsOneWidget);
    expect(find.bySemanticsLabel('propyne'), findsOneWidget);

    await tester.tap(find.byKey(const Key('bulb-goc-l1-e1-q1')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('reason-goc-l1-e1-q1')), findsOneWidget);
    expect(find.textContaining('both are sp'), findsOneWidget);

    await tester.ensureVisible(find.byKey(const Key('option-goc-l1-e1-q1-b')));
    await tester.tap(find.byKey(const Key('option-goc-l1-e1-q1-b')));
    await tester.pumpAndSettle();
    expect(find.textContaining('Not this one'), findsOneWidget);
    expect(find.textContaining('The right option is c'), findsOneWidget);

    await tester.tap(find.byTooltip('Back to the grid'));
    await tester.pumpAndSettle();
    final box = tester.widget<NumberBox>(find.byKey(const Key('box-goc-l1-e1-q1')));
    expect(box.answered, isTrue);

    await tester.tap(find.byKey(const Key('box-goc-l1-e1-q2')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('flag-goc-l1-e1-q2')));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Back to the grid'));
    await tester.pumpAndSettle();
    final flagged = tester.widget<NumberBox>(find.byKey(const Key('box-goc-l1-e1-q2')));
    expect(flagged.flagged, isTrue);
    expect(flagged.answered, isFalse);
  });

  testWidgets('phone width lays out every question without overflow', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final store = ProgressStore(persist: false);
    for (final chapter in chapters.where((chapter) => chapter.available)) {
    for (final level in chapter.levels) {
      for (final exercise in level.exercises) {
        for (var index = 0; index < exercise.questions.length; index++) {
          await tester.pumpWidget(
            ProgressScope(
              store: store,
              child: MaterialApp(
                home: QuestionScreen(
                  levelTitle: level.title,
                  exercise: exercise,
                  index: index,
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull, reason: exercise.questions[index].id);
          final list = find.byType(ListView);
          for (var step = 0; step < 8; step++) {
            await tester.drag(list, const Offset(0, -350));
            await tester.pump();
            expect(tester.takeException(), isNull, reason: exercise.questions[index].id);
          }
        }
      }
    }
    }
  });

  test('answers persist locally', () async {
    SharedPreferences.setMockInitialValues({});
    final store = ProgressStore();
    await store.load();
    await store.markAnswered('goc-l1-e1-q1', correct: false, response: 'b');
    await store.toggleFlag('goc-l1-e1-q2');
    await store.markAnswered('goc-l1-e1-q1', correct: true, response: 'c');

    final again = ProgressStore();
    await again.load();
    expect(again.get('goc-l1-e1-q1').answered, isTrue);
    expect(again.get('goc-l1-e1-q1').correct, isFalse);
    expect(again.get('goc-l1-e1-q1').response, 'b');
    expect(again.get('goc-l1-e1-q2').flagged, isTrue);
    expect(again.get('goc-l1-e1-q2').answered, isFalse);
  });
}
