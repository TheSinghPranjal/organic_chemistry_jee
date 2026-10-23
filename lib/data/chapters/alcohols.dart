import '../../models/content.dart';
import 'ae_e1.dart';
import 'ae_rest.dart';

/// Alcohols, phenols, and ethers, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer. Phenols sit in this chapter.
final Chapter alcoholsChapter = Chapter(
  id: 'alcohols-ethers',
  title: 'Alcohols and Ethers',
  subtitle: 'Alcohols, phenols, and ethers',
  doodle: 4,
  levels: [
    Level(
      id: 'ae-e1',
      title: 'Exercise 1',
      exercises: [aeExercise1Level1, aeExercise1Level2],
    ),
    Level(id: 'ae-e2', title: 'Exercise 2', exercises: [aeExercise2]),
    Level(id: 'ae-e3', title: 'Exercise 3', exercises: [aeExercise3]),
    Level(id: 'ae-e4', title: 'Exercise 4', exercises: [aeExercise4]),
    Level(id: 'ae-e5', title: 'Exercise 5', exercises: [aeExercise5]),
  ],
);
