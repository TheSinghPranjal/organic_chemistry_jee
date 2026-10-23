import '../../models/content.dart';
import 'iso_e1.dart';
import 'iso_rest.dart';

/// Isomerism, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1, Level 2 and Level 3.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter isomerismChapter = Chapter(
  id: 'isomerism',
  title: 'Isomerism',
  subtitle: 'Structural and stereo relationships',
  doodle: 1,
  levels: [
    Level(
      id: 'iso-e1',
      title: 'Exercise 1',
      exercises: [isoExercise1Level1, isoExercise1Level2, isoExercise1Level3],
    ),
    Level(id: 'iso-e2', title: 'Exercise 2', exercises: [isoExercise2]),
    Level(id: 'iso-e3', title: 'Exercise 3', exercises: [isoExercise3]),
    Level(id: 'iso-e4', title: 'Exercise 4', exercises: [isoExercise4]),
    Level(id: 'iso-e5', title: 'Exercise 5', exercises: [isoExercise5]),
  ],
);
