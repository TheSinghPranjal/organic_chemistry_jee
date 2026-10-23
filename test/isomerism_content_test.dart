import 'package:flutter_test/flutter_test.dart';
import 'package:organic_chemistry_jee/data/chapters/isomerism.dart';
import 'package:organic_chemistry_jee/models/content.dart';
import 'package:organic_chemistry_jee/sketch/mol.dart';

void main() {
  test('isomerism keeps the exercise outline and the question counts', () {
    expect(
      isomerismChapter.levels.map((level) => level.title).toList(),
      ['Exercise 1', 'Exercise 2', 'Exercise 3', 'Exercise 4', 'Exercise 5'],
    );
    expect(
      isomerismChapter.levels.map((level) => level.exercises.map((exercise) => exercise.title).toList()).toList(),
      [
        ['Level 1', 'Level 2', 'Level 3'],
        ['More than one correct'],
        ['Linked comprehension'],
        ['Matrix match'],
        ['Integer answers'],
      ],
    );

    final counts = {
      for (final level in isomerismChapter.levels)
        level.title: {for (final exercise in level.exercises) exercise.title: exercise.questions.length},
    };
    expect(counts['Exercise 1'], {'Level 1': 12, 'Level 2': 12, 'Level 3': 12});
    expect(counts['Exercise 2'], {'More than one correct': 8});
    expect(counts['Exercise 3'], {'Linked comprehension': 8});
    expect(counts['Exercise 4'], {'Matrix match': 5});
    expect(counts['Exercise 5'], {'Integer answers': 8});
    expect(isomerismChapter.questionCount, 65);
  });

  test('every isomerism question has a checked answer and a real explanation', () {
    final ids = <String>{};
    var figures = 0;
    var wedges = 0;
    var newmans = 0;
    var sawhorses = 0;
    for (final level in isomerismChapter.levels) {
      for (final exercise in level.exercises) {
        final numbers = exercise.questions.map((question) => question.number).toList();
        expect(numbers, List.generate(exercise.questions.length, (index) => index + 1));
        for (final question in exercise.questions) {
          expect(ids.add(question.id), isTrue, reason: 'duplicate ${question.id}');
          expect(question.prompt.trim().length, greaterThan(10));
          expect(question.explanation.trim().length, greaterThan(80));
          expect(question.explanation.contains('TODO'), isFalse);
          _expectAnswerFits(question);
          for (final sketch in [
            if (question.figure != null) question.figure!,
            for (final choice in question.choices)
              if (choice.figure != null) choice.figure!,
          ]) {
            figures++;
            if (sketch.bonds.any((bond) => bond.style != BondStyle.plain)) wedges++;
            if (sketch.newman != null) newmans++;
            if (sketch.sawhorse != null) sawhorses++;
          }
        }
      }
    }
    expect(figures, greaterThan(8));
    expect(wedges, greaterThan(2));
    expect(newmans, greaterThan(2));
    expect(sawhorses, greaterThan(0));
  });

  test('a matrix row may match more than one code, in any order', () {
    final match = isomerismChapter.questions.firstWhere((question) => question.matchAllowsMany);
    expect(match.accepts(match.answer), isTrue);
    expect(match.accepts('B-SQ,A-SP,D-SQ,C-R'), match.answer == 'A-PS,B-QS,C-R,D-QS');
    expect(match.accepts('A-P,B-Q,C-R,D-S'), isFalse);

    final integer = isomerismChapter.questions.firstWhere((question) => question.kind == QuestionKind.integer);
    expect(integer.accepts('0${integer.answer}'), integer.answer != '0');
  });
}

void _expectAnswerFits(Question question) {
  switch (question.kind) {
    case QuestionKind.single:
      expect(question.choices.map((choice) => choice.key).toList(), ['a', 'b', 'c', 'd']);
      expect(question.choices.any((choice) => choice.key == question.answer), isTrue);
      break;
    case QuestionKind.multi:
      final keys = question.choices.map((choice) => choice.key).toSet();
      final answers = question.answer.split(',');
      expect(answers, orderedEquals([...answers]..sort()));
      expect(answers.length, greaterThan(1));
      expect(answers.length, lessThan(keys.length));
      for (final key in answers) {
        expect(keys.contains(key), isTrue, reason: question.id);
      }
      break;
    case QuestionKind.integer:
      expect(question.choices, isEmpty);
      expect(int.parse(question.answer), greaterThanOrEqualTo(0));
      break;
    case QuestionKind.match:
      expect(question.answer, canonMatch(question.answer));
      expect(question.matchKey.keys.toList()..sort(), ['A', 'B', 'C', 'D']);
      final allowed = question.column2.map((entry) => entry.key).toSet();
      for (final letters in question.matchKey.values) {
        expect(letters, isNotEmpty);
        for (final letter in letters.split('')) {
          expect(allowed.contains(letter), isTrue, reason: question.id);
        }
      }
      break;
  }
}
