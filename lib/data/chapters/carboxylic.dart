import '../../models/content.dart';
import 'ca_e1.dart';
import 'ca_rest.dart';

/// Carboxylic acids and their derivatives, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and a larger Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter carboxylicChapter = Chapter(
  id: 'carboxylic',
  title: 'Carboxylic Acids and Derivatives',
  subtitle: 'Acids, esters, and amides',
  doodle: 6,
  levels: [
    Level(
      id: 'ca-e1',
      title: 'Exercise 1',
      exercises: [caExercise1Level1, caExercise1Level2],
    ),
    Level(id: 'ca-e2', title: 'Exercise 2', exercises: [caExercise2]),
    Level(id: 'ca-e3', title: 'Exercise 3', exercises: [caExercise3]),
    Level(id: 'ca-e4', title: 'Exercise 4', exercises: [caExercise4]),
    Level(id: 'ca-e5', title: 'Exercise 5', exercises: [caExercise5]),
  ],
);
