import 'package:flutter_test/flutter_test.dart';
import 'package:organic_chemistry_jee/data/catalog.dart';
import 'package:organic_chemistry_jee/data/chapters/goc.dart';
import 'package:organic_chemistry_jee/models/content.dart';

void main() {
  test('course shell has the twelve chapters in order', () {
    expect(chapters.map((chapter) => chapter.title).toList(), [
      'General Organic Chemistry',
      'Isomerism',
      'Hydrocarbons',
      'Halides',
      'Alcohols and Ethers',
      'Carbonyl Compounds',
      'Carboxylic Acids and Derivatives',
      'Amines',
      'Aromatic Hydrocarbons',
      'Biomolecules',
      'Practical Organic Chemistry',
      'Nomenclature',
    ]);
    expect(
      chapters.where((chapter) => chapter.available).map((chapter) => chapter.id),
      ['goc', 'isomerism', 'hydrocarbons', 'halides'],
    );
  });

  test('GOC keeps the level and exercise outline and the question counts', () {
    expect(gocChapter.levels.map((level) => level.title).toList(), ['Level 1', 'Level 2', 'Level 3']);
    expect(
      gocChapter.levels.map((level) => level.exercises.map((exercise) => exercise.title).toList()).toList(),
      [
        ['Exercise 1', 'Exercise 2', 'Exercise 3'],
        ['Exercise 1', 'Exercise 2', 'Exercise 3'],
        ['Exercise 1', 'Exercise 2'],
      ],
    );

    final counts = {
      for (final level in gocChapter.levels)
        level.title: {for (final exercise in level.exercises) exercise.title: exercise.questions.length},
    };
    expect(counts['Level 1'], {'Exercise 1': 14, 'Exercise 2': 12, 'Exercise 3': 10});
    expect(counts['Level 2'], {'Exercise 1': 12, 'Exercise 2': 8, 'Exercise 3': 6});
    expect(counts['Level 3'], {'Exercise 1': 8, 'Exercise 2': 8});
    expect(gocChapter.questionCount, 78);
  });

  test('every question has a checked answer and a real explanation', () {
    final ids = <String>{};
    for (final level in gocChapter.levels) {
      for (final exercise in level.exercises) {
        final numbers = exercise.questions.map((question) => question.number).toList();
        expect(numbers, List.generate(exercise.questions.length, (index) => index + 1));
        for (final question in exercise.questions) {
          expect(ids.add(question.id), isTrue, reason: 'duplicate ${question.id}');
          expect(question.prompt.trim().length, greaterThan(10));
          expect(question.explanation.trim().length, greaterThan(80));
          expect(question.explanation.contains('TODO'), isFalse);
          _expectAnswerFits(question);
        }
      }
    }
  });

  test('grading ignores option order and leading zeros', () {
    final multi = gocChapter.questions.firstWhere((question) => question.kind == QuestionKind.multi);
    expect(multi.accepts('d,b,a'), isTrue);
    expect(multi.accepts('a'), isFalse);

    final integer = gocChapter.questions.firstWhere((question) => question.kind == QuestionKind.integer);
    expect(integer.accepts('0${integer.answer}'), integer.answer != '0');
    expect(integer.accepts(integer.answer), isTrue);
    expect(integer.accepts('${int.parse(integer.answer) + 1}'), isFalse);

    final match = gocChapter.questions.firstWhere((question) => question.kind == QuestionKind.match);
    final reversed = match.answer.split(',').reversed.join(',');
    expect(match.accepts(reversed), isTrue);
    expect(match.accepts('A-S,B-Q,C-R,D-P'), isFalse);
  });
}

void _expectAnswerFits(Question question) {
  switch (question.kind) {
    case QuestionKind.single:
      expect(question.choices.map((choice) => choice.key).toList(), ['a', 'b', 'c', 'd']);
      expect(question.choices.map((choice) => choice.key).toSet(), hasLength(4));
      expect(question.choices.any((choice) => choice.key == question.answer), isTrue);
      expect(question.answer.length, 1);
      break;
    case QuestionKind.multi:
      final keys = question.choices.map((choice) => choice.key).toSet();
      final answers = question.answer.split(',');
      expect(answers, isNotEmpty);
      expect(answers.toSet(), hasLength(answers.length));
      expect(answers, orderedEquals([...answers]..sort()));
      for (final key in answers) {
        expect(keys.contains(key), isTrue, reason: question.id);
      }
      expect(answers.length, lessThan(keys.length));
      break;
    case QuestionKind.integer:
      expect(question.choices, isEmpty);
      expect(int.tryParse(question.answer), isNotNull);
      expect(int.parse(question.answer), greaterThanOrEqualTo(0));
      break;
    case QuestionKind.match:
      expect(question.column1.map((entry) => entry.key).toList(), ['A', 'B', 'C', 'D']);
      expect(question.column2.map((entry) => entry.key).toList(), ['P', 'Q', 'R', 'S']);
      expect(question.matchKey.keys.toList()..sort(), ['A', 'B', 'C', 'D']);
      expect(question.matchKey.values.toSet(), {'P', 'Q', 'R', 'S'});
      break;
  }
}
