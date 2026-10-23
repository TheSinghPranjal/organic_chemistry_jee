import '../models/content.dart';
import 'chapters/goc.dart';
import 'chapters/halides.dart';
import 'chapters/hydrocarbons.dart';
import 'chapters/isomerism.dart';

/// Course map. General Organic Chemistry, Isomerism, Hydrocarbons, and Halides are filled in.
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
  Chapter.comingSoon(
    id: 'alcohols-ethers',
    title: 'Alcohols and Ethers',
    subtitle: 'Oxygen groups on carbon chains',
    doodle: 4,
  ),
  Chapter.comingSoon(
    id: 'carbonyl',
    title: 'Carbonyl Compounds',
    subtitle: 'Aldehydes and ketones',
    doodle: 5,
  ),
  Chapter.comingSoon(
    id: 'carboxylic',
    title: 'Carboxylic Acids and Derivatives',
    subtitle: 'Acids, esters, and amides',
    doodle: 6,
  ),
  Chapter.comingSoon(
    id: 'amines',
    title: 'Amines',
    subtitle: 'Nitrogen bases and their reactions',
    doodle: 7,
  ),
  Chapter.comingSoon(
    id: 'aromatics',
    title: 'Aromatic Hydrocarbons',
    subtitle: 'Benzene and substitution on the ring',
    doodle: 8,
  ),
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
