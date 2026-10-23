import '../../models/content.dart';
import 'hx_e1.dart';
import 'hx_rest.dart';

/// Halides, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter halidesChapter = Chapter(
  id: 'halides',
  title: 'Halides',
  subtitle: 'Alkyl and aryl halides',
  doodle: 3,
  levels: [
    Level(
      id: 'hx-e1',
      title: 'Exercise 1',
      exercises: [hxExercise1Level1, hxExercise1Level2],
    ),
    Level(id: 'hx-e2', title: 'Exercise 2', exercises: [hxExercise2]),
    Level(id: 'hx-e3', title: 'Exercise 3', exercises: [hxExercise3]),
    Level(id: 'hx-e4', title: 'Exercise 4', exercises: [hxExercise4]),
    Level(id: 'hx-e5', title: 'Exercise 5', exercises: [hxExercise5]),
  ],
);
