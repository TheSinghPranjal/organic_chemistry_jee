import 'package:flutter_test/flutter_test.dart';
import 'package:organic_chemistry_jee/data/chapters/carbonyl.dart';
import 'package:organic_chemistry_jee/models/content.dart';

void main() {
  test('carbonyl keeps the exercise outline and the question counts', () {
    expect(
      carbonylChapter.levels.map((level) => level.title).toList(),
      ['Exercise 1', 'Exercise 2', 'Exercise 3', 'Exercise 4', 'Exercise 5'],
    );
    expect(
      carbonylChapter.levels.map((level) => level.exercises.map((exercise) => exercise.title).toList()).toList(),
      [
        ['Level 1', 'Level 2'],
        ['More than one correct'],
        ['Linked comprehension'],
        ['Matrix match'],
        ['Integer answers'],
      ],
    );

    final counts = {
      for (final level in carbonylChapter.levels)
        level.title: {for (final exercise in level.exercises) exercise.title: exercise.questions.length},
    };
    expect(counts['Exercise 1'], {'Level 1': 12, 'Level 2': 18});
    expect(counts['Exercise 2'], {'More than one correct': 8});
    expect(counts['Exercise 3'], {'Linked comprehension': 8});
    expect(counts['Exercise 4'], {'Matrix match': 6});
    expect(counts['Exercise 5'], {'Integer answers': 8});
    expect(carbonylChapter.questionCount, 60);
  });

  test('every carbonyl question has a checked answer and a real explanation', () {
    final ids = <String>{};
    var schemes = 0;
    for (final question in carbonylChapter.questions) {
      expect(ids.add(question.id), isTrue, reason: question.id);
      expect(question.explanation.trim().length, greaterThan(80));
      expect(question.explanation.contains('TODO'), isFalse);
      final figure = question.figure;
      if (figure != null && (figure.arrows.isNotEmpty || figure.bonds.any((bond) => bond.order > 1))) {
        schemes++;
      }
      _expectAnswerFits(question);
    }
    expect(schemes, greaterThan(5));
  });

  test('a matrix row can carry more than one letter', () {
    final match = carbonylChapter.questions.firstWhere((question) => question.matchAllowsMany);
    expect(match.answer, 'A-PQRS,B-P,C-RS,D-S');
    expect(match.accepts(match.answer), isTrue);
    expect(match.accepts('D-S,C-SR,B-P,A-SRQP'), isTrue);
    expect(match.accepts('A-P,B-P,C-RS,D-S'), isFalse);
    final integer = carbonylChapter.questions.firstWhere((question) => question.kind == QuestionKind.integer);
    expect(integer.accepts('03'), isTrue);
    expect(integer.answer, '3');
  });
}

void _expectAnswerFits(Question question) {
  switch (question.kind) {
    case QuestionKind.single:
      expect(question.choices.map((choice) => choice.key).toList(), ['a', 'b', 'c', 'd']);
      expect(question.choices.any((choice) => choice.key == question.answer), isTrue);
      break;
    case QuestionKind.multi:
      final answers = question.answer.split(',');
      expect(answers, orderedEquals([...answers]..sort()));
      expect(answers.length, greaterThan(1));
      expect(answers.length, lessThan(question.choices.length));
      break;
    case QuestionKind.integer:
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
