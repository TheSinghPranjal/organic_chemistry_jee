import '../../models/content.dart';
import 'goc_level1.dart';
import 'goc_level2.dart';
import 'goc_level3.dart';

/// General Organic Chemistry, written for this notebook.
///
/// The outline follows a three-level chapter:
/// Level 1 has Exercises 1 to 3, Level 2 has Exercises 1 to 3,
/// and Level 3 has Exercises 1 and 2.
/// Kinds used here are single-correct, multi-correct, matching,
/// comprehension passages, and integer answers.
///
/// A later chapter can copy this shape: one file per level, assembled
/// into a [Chapter], then swapped into [chapters] in catalog.dart.
final Chapter gocChapter = Chapter(
  id: 'goc',
  title: 'General Organic Chemistry',
  subtitle: 'Effects, intermediates, and acid–base ideas',
  doodle: 0,
  levels: [gocLevel1, gocLevel2, gocLevel3],
);
