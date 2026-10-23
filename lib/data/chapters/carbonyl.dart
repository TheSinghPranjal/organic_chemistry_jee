import '../../models/content.dart';
import 'co_e1.dart';
import 'co_rest.dart';

/// Aldehydes and ketones, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and a larger Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter carbonylChapter = Chapter(
  id: 'carbonyl',
  title: 'Carbonyl Compounds',
  subtitle: 'Aldehydes and ketones',
  doodle: 5,
  levels: [
    Level(
      id: 'co-e1',
      title: 'Exercise 1',
      exercises: [coExercise1Level1, coExercise1Level2],
    ),
    Level(id: 'co-e2', title: 'Exercise 2', exercises: [coExercise2]),
    Level(id: 'co-e3', title: 'Exercise 3', exercises: [coExercise3]),
    Level(id: 'co-e4', title: 'Exercise 4', exercises: [coExercise4]),
    Level(id: 'co-e5', title: 'Exercise 5', exercises: [coExercise5]),
  ],
);
