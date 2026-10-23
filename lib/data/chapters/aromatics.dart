import '../../models/content.dart';
import 'ar_e1.dart';
import 'ar_rest.dart';

/// Aromatic hydrocarbons, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1, Level 2, and a
/// larger Level 3. Exercise 2 is more than one correct option. Exercise 3 is
/// linked comprehension. Exercise 4 is a matrix match, and a row may fit more
/// than one code. Exercise 5 is an integer answer.
final Chapter aromaticsChapter = Chapter(
  id: 'aromatics',
  title: 'Aromatic Hydrocarbons',
  subtitle: 'Benzene and substitution on the ring',
  doodle: 8,
  levels: [
    Level(
      id: 'ar-e1',
      title: 'Exercise 1',
      exercises: [arExercise1Level1, arExercise1Level2, arExercise1Level3],
    ),
    Level(id: 'ar-e2', title: 'Exercise 2', exercises: [arExercise2]),
    Level(id: 'ar-e3', title: 'Exercise 3', exercises: [arExercise3]),
    Level(id: 'ar-e4', title: 'Exercise 4', exercises: [arExercise4]),
    Level(id: 'ar-e5', title: 'Exercise 5', exercises: [arExercise5]),
  ],
);
