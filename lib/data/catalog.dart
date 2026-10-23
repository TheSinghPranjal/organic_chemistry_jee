import '../models/content.dart';
import 'chapters/alcohols.dart';
import 'chapters/aromatics.dart';
import 'chapters/amines.dart';
import 'chapters/carbonyl.dart';
import 'chapters/carboxylic.dart';
import 'chapters/goc.dart';
import 'chapters/halides.dart';
import 'chapters/hydrocarbons.dart';
import 'chapters/isomerism.dart';

/// Course map. General Organic Chemistry, Isomerism, Hydrocarbons, Halides, Alcohols and Ethers, Carbonyl Compounds, Carboxylic Acids and Derivatives, Amines, and Aromatic Hydrocarbons are filled in.
///
/// To add a chapter in a later change:
/// 1. Add `lib/data/chapters/<id>.dart` exporting a [Chapter] with levels,
///    exercises, and questions. Use [QuestionKind.single], [QuestionKind.multi],
///    [QuestionKind.match], or [QuestionKind.integer]. A passage is a single
///    question with [Question.passage] set.
/// 2. Replace the matching [Chapter.comingSoon] entry below.
final List<Chapter> chapters = [
  gocChapter,
  isomerismChapter,
  hydrocarbonsChapter,
  halidesChapter,
  alcoholsChapter,
  carbonylChapter,
  carboxylicChapter,
  aminesChapter,
  aromaticsChapter,
  Chapter.comingSoon(
    id: 'biomolecules',
    title: 'Biomolecules',
    subtitle: 'Carbohydrates, amino acids, and proteins',
    doodle: 9,
  ),
  Chapter.comingSoon(
    id: 'practical',
    title: 'Practical Organic Chemistry',
    subtitle: 'Tests, separation, and purification',
    doodle: 10,
  ),
  Chapter.comingSoon(
    id: 'nomenclature',
    title: 'Nomenclature',
    subtitle: 'How organic molecules are named',
    doodle: 11,
  ),
];
