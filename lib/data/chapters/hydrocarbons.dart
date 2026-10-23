import '../../models/content.dart';
import 'hc_e1.dart';
import 'hc_rest.dart';

/// Hydrocarbons, written for this notebook.
///
/// Exercise 1 is single-correct and is split into Level 1 and Level 2.
/// Exercise 2 is more than one correct option. Exercise 3 is linked
/// comprehension. Exercise 4 is a matrix match, and a row may fit more than
/// one code. Exercise 5 is an integer answer.
final Chapter hydrocarbonsChapter = Chapter(
  id: 'hydrocarbons',
  title: 'Hydrocarbons',
  subtitle: 'Alkanes, alkenes, and alkynes',
  doodle: 2,
  levels: [
    Level(
      id: 'hc-e1',
      title: 'Exercise 1',
      exercises: [hcExercise1Level1, hcExercise1Level2],
    ),
    Level(id: 'hc-e2', title: 'Exercise 2', exercises: [hcExercise2]),
    Level(id: 'hc-e3', title: 'Exercise 3', exercises: [hcExercise3]),
    Level(id: 'hc-e4', title: 'Exercise 4', exercises: [hcExercise4]),
    Level(id: 'hc-e5', title: 'Exercise 5', exercises: [hcExercise5]),
  ],
);
