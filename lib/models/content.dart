import '../sketch/mol.dart';

enum QuestionKind { single, multi, match, integer }

class Choice {
  const Choice(this.key, this.text, {this.figure});

  final String key;
  final String text;
  final MolSketch? figure;
}

class MatchEntry {
  const MatchEntry(this.key, this.text);

  final String key;
  final String text;
}

class Question {
  const Question({
    required this.id,
    required this.number,
    required this.kind,
    required this.prompt,
    required this.answer,
    required this.explanation,
    this.choices = const [],
    this.column1 = const [],
    this.column2 = const [],
    this.figure,
    this.passageTitle,
    this.passage,
  });

  final String id;
  final int number;
  final QuestionKind kind;
  final String prompt;
  final String answer;
  final String explanation;
  final List<Choice> choices;
  final List<MatchEntry> column1;
  final List<MatchEntry> column2;
  final MolSketch? figure;
  final String? passageTitle;
  final String? passage;

  bool accepts(String response) {
    switch (kind) {
      case QuestionKind.single:
        return response.trim() == answer;
      case QuestionKind.multi:
        return canonMulti(response) == canonMulti(answer);
      case QuestionKind.integer:
        final given = canonInt(response);
        final expected = canonInt(answer);
        return given != null && given == expected;
      case QuestionKind.match:
        return canonMatch(response) == canonMatch(answer);
    }
  }

  Map<String, String> get matchKey {
    final map = <String, String>{};
    for (final part in answer.split(',')) {
      final bits = part.split('-');
      if (bits.length == 2) map[bits[0]] = bits[1];
    }
    return map;
  }

  String get kindLabel {
    switch (kind) {
      case QuestionKind.single:
        return 'One correct option';
      case QuestionKind.multi:
        return 'Select every correct option';
      case QuestionKind.match:
        return 'Match each entry';
      case QuestionKind.integer:
        return 'Integer answer';
    }
  }
}

String canonMulti(String raw) {
  final parts = raw
      .split(',')
      .map((part) => part.trim().toLowerCase())
      .where((part) => part.isNotEmpty)
      .toList()
    ..sort();
  return parts.join(',');
}

String? canonInt(String raw) {
  final value = int.tryParse(raw.trim());
  if (value == null) return null;
  return '$value';
}

String canonMatch(String raw) {
  final parts = raw
      .split(',')
      .map((part) => part.trim().toUpperCase())
      .where((part) => part.isNotEmpty)
      .toList()
    ..sort();
  return parts.join(',');
}

class Exercise {
  const Exercise({
    required this.id,
    required this.title,
    required this.topic,
    required this.instruction,
    required this.questions,
  });

  final String id;
  final String title;
  final String topic;
  final String instruction;
  final List<Question> questions;
}

class Level {
  const Level({
    required this.id,
    required this.title,
    required this.exercises,
  });

  final String id;
  final String title;
  final List<Exercise> exercises;
}

class Chapter {
  const Chapter({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.levels,
    this.doodle = 0,
  });

  factory Chapter.comingSoon({
    required String id,
    required String title,
    required String subtitle,
    required int doodle,
  }) {
    return Chapter(
      id: id,
      title: title,
      subtitle: subtitle,
      levels: const [],
      doodle: doodle,
    );
  }

  final String id;
  final String title;
  final String subtitle;
  final List<Level> levels;
  final int doodle;

  bool get available => levels.isNotEmpty;

  int get questionCount => levels.fold<int>(
        0,
        (sum, level) =>
            sum + level.exercises.fold<int>(0, (inner, exercise) => inner + exercise.questions.length),
      );

  List<Question> get questions => [
        for (final level in levels)
          for (final exercise in level.exercises) ...exercise.questions,
      ];
}

Question singleQuestion({
  required String exerciseId,
  required int number,
  required String prompt,
  required List<Choice> choices,
  required String answer,
  required String explanation,
  MolSketch? figure,
  String? passageTitle,
  String? passage,
}) {
  return Question(
    id: '$exerciseId-q$number',
    number: number,
    kind: QuestionKind.single,
    prompt: prompt,
    choices: choices,
    answer: answer,
    explanation: explanation,
    figure: figure,
    passageTitle: passageTitle,
    passage: passage,
  );
}
