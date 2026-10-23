import '../../models/content.dart';
import 'am_e1.dart';
import 'am_rest.dart';

/// Amines, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and a larger Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter aminesChapter = Chapter(
  id: 'amines',
  title: 'Amines',
  subtitle: 'Nitrogen bases and their reactions',
  doodle: 7,
  levels: [
    Level(
      id: 'am-e1',
      title: 'Exercise 1',
      exercises: [amExercise1Level1, amExercise1Level2],
    ),
    Level(id: 'am-e2', title: 'Exercise 2', exercises: [amExercise2]),
    Level(id: 'am-e3', title: 'Exercise 3', exercises: [amExercise3]),
    Level(id: 'am-e4', title: 'Exercise 4', exercises: [amExercise4]),
    Level(id: 'am-e5', title: 'Exercise 5', exercises: [amExercise5]),
  ],
);
