import '../../models/content.dart';
import '../../sketch/projections.dart';

const _e2 = 'iso-e2-m';
const _e3 = 'iso-e3-p';
const _e4 = 'iso-e4-x';
const _e5 = 'iso-e5-n';

final Exercise isoExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Structural, geometrical, optical, and conformational statements',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which compounds can show geometrical isomerism?',
      choices: const [
        Choice('a', '2-Butene'),
        Choice('b', '1-Butene'),
        Choice('c', '1,2-Dichloroethene'),
        Choice('d', '2-Methylbut-2-ene'),
      ],
      answer: 'a,c',
      explanation:
          '2-Butene has H and CH3 on each alkene carbon, so cis and trans forms exist. 1,2-Dichloroethene likewise has two different groups on each carbon. 1-Butene ends in CH2, so that carbon has two hydrogens. In 2-methylbut-2-ene one alkene carbon carries two methyl groups. A carbon with two identical substituents does not give geometrical isomers.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which molecules are chiral?',
      choices: const [
        Choice('a', '2-Chlorobutane'),
        Choice('b', 'The meso form of 2,3-dihydroxybutanedioic acid'),
        Choice('c', 'Penta-2,3-diene'),
        Choice('d', 'trans-2-Butene'),
      ],
      answer: 'a,c',
      explanation:
          '2-Chlorobutane has one stereocentre, so a single enantiomer is chiral. Penta-2,3-diene has no tetrahedral stereocentre, but the perpendicular ends of the allene, each carrying H and CH3, make a chiral axis. The meso hydroxy acid has a mirror plane and is achiral. trans-2-Butene has a centre of symmetry and is achiral; cis and trans here are geometrical isomers, not enantiomers.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which statements about a racemic mixture are correct?',
      choices: const [
        Choice('a', 'It does not rotate plane-polarised light'),
        Choice('b', 'It contains equal amounts of a pair of enantiomers'),
        Choice('c', 'It is a meso compound'),
        Choice('d', 'The two enantiomers can, in principle, be separated'),
      ],
      answer: 'a,b,d',
      explanation:
          'A racemate is a 1:1 mixture of enantiomers. Their rotations are equal and opposite, so the mixture is optically inactive. The molecules are still chiral, and a chiral resolving agent, or another chiral method, can separate them. A meso compound is a single achiral substance. It is not a mixture, and it cannot be separated into enantiomers.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which compounds have an enol tautomer?',
      choices: const [
        Choice('a', 'Propanone'),
        Choice('b', 'Benzophenone'),
        Choice('c', 'Ethanal'),
        Choice('d', '2,2-Dimethylpropanal'),
      ],
      answer: 'a,c',
      explanation:
          'An enol needs a hydrogen on a carbon attached to the carbonyl carbon. Propanone has hydrogens on both methyl groups, and ethanal has them on its methyl group. Benzophenone is flanked by phenyl rings and has no such hydrogen. In 2,2-dimethylpropanal the neighbouring carbon is a quaternary carbon, C(CH3)3, so there is no alpha hydrogen to move.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which statements about conformation are correct?',
      choices: const [
        Choice('a', 'Anti butane is lower in energy than gauche butane'),
        Choice('b', 'The methyl–methyl eclipsed form of butane is an energy maximum'),
        Choice('c', 'Gauche and anti butane are configurational isomers'),
        Choice('d', 'Chair cyclohexane is more stable than boat cyclohexane'),
      ],
      answer: 'a,b,d',
      explanation:
          'In butane the anti dihedral angle of 180° keeps the methyl groups furthest apart, so it is the global minimum. Gauche, at 60°, is a higher minimum. Stacking the two methyl groups, the fully eclipsed form, is the highest point on that rotation. Those forms interconvert without breaking a bond, so they are not configurational isomers. The chair of cyclohexane is staggered; the boat is eclipsed and has a flagpole interaction, so the chair is more stable.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'This Fischer projection has both OH groups on the left. Which statements are correct?',
      figure: fischerMesoTartaric,
      choices: const [
        Choice('a', 'Each horizontal bond points toward the viewer'),
        Choice('b', 'The molecule has a plane of symmetry'),
        Choice('c', 'The configuration is (2R,3R)'),
        Choice('d', 'A pure sample does not rotate plane-polarised light'),
      ],
      answer: 'a,b,d',
      explanation:
          'Fischer horizontal bonds are wedges, so they come out of the page. With both OH groups on the left the upper stereocentre is S and the lower one is R, not (2R,3R). A horizontal mirror plane between them makes the molecule meso and achiral, so a pure sample is optically inactive. (2R,3R) would put the upper OH on the right and the lower OH on the left, and that enantiomer is optically active.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which statements about E/Z and cis/trans labels are correct?',
      choices: const [
        Choice('a', '(E)-2-Butene and trans-2-butene are the same stereoisomer'),
        Choice('b', 'Cis and trans isomers of an alkene are diastereomers'),
        Choice('c', 'Every alkene that is E is also correctly called cis'),
        Choice('d', '1,1-Dichloroethene has a distinct E isomer'),
      ],
      answer: 'a,b',
      explanation:
          'In 2-butene the higher CIP group on each carbon is the methyl group. Opposite methyl groups are E, and that is the same arrangement that is called trans. Cis and trans isomers are stereoisomers and are not mirror images, so they are diastereomers. E does not mean cis: E means the high-priority groups are opposite. 1,1-Dichloroethene has two chlorines on one carbon, so that carbon is not stereogenic and there is no E or Z isomer.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements are correct?',
      choices: const [
        Choice('a', 'Enantiomers have the same boiling point'),
        Choice('b', 'Enantiomers rotate plane-polarised light by equal angles in opposite directions'),
        Choice('c', 'Diastereomers are nonsuperimposable mirror images'),
        Choice('d', 'A meso compound has stereocentres and is achiral'),
      ],
      answer: 'a,b,d',
      explanation:
          'Enantiomers match in every scalar physical property, including boiling point, and their optical rotations are equal in size and opposite in sign. Diastereomers are stereoisomers that are not mirror images; the mirror-image relationship is the definition of enantiomers. A meso compound does contain stereocentres, and a symmetry element makes the whole molecule achiral.',
    ),
  ],
);

const _passageAcidsTitle = 'Two hydroxy acids on the page';

const _passageAcids = '''
A student draws 2-hydroxypropanoic acid as a Fischer projection with CO2H at the top, CH3 at the bottom, and OH on the right. The horizontal bonds are wedges and point toward the viewer. The vertical bonds are hashes and point away.

A second drawing uses the same convention for 2,3-dihydroxybutanedioic acid. Both CO2H groups are on the vertical line, and both OH groups are on the left. The student is asked to compare that drawing with a bottle that contains equal amounts of the two enantiomers of 2-hydroxypropanoic acid.
''';

const _passageConformTitle = 'Rotation in butane';

const _passageConform = '''
Butane is viewed along the bond between C2 and C3. In one staggered arrangement the two methyl groups are as far apart as rotation about that bond can place them. A second staggered arrangement places the methyl groups 60° apart. Turning the bond until one methyl group sits directly in front of the other gives the highest-energy point on this rotation.

None of these arrangements requires a bond to break. At room temperature the molecule passes among them many times a second.
''';

final Exercise isoExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'A Fischer passage, then a conformation passage',
  instruction:
      'Questions 1 to 4 use the hydroxy-acid passage. Questions 5 to 8 use the butane passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageAcidsTitle,
      passage: _passageAcids,
      prompt: 'The configuration of the 2-hydroxypropanoic acid in the first drawing is',
      choices: const [
        Choice('a', 'R'),
        Choice('b', 'S'),
        Choice('c', 'E'),
        Choice('d', 'meso'),
      ],
      answer: 'a',
      explanation:
          'OH is on a horizontal wedge, on the right, and H is on the left, also toward the viewer, so H is in front. Priorities are OH, then CO2H, then CH3. The apparent order is counter-clockwise, and with H in front that counter-clockwise order is R. The molecule has one stereocentre, so it is not meso, and E is an alkene label.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageAcidsTitle,
      passage: _passageAcids,
      prompt: 'The drawing with OH on the right and the drawing of the same acid with OH on the left are',
      choices: const [
        Choice('a', 'enantiomers'),
        Choice('b', 'diastereomers'),
        Choice('c', 'the same meso compound'),
        Choice('d', 'chain isomers'),
      ],
      answer: 'a',
      explanation:
          'Swapping the horizontal OH and H in a Fischer projection reverses the single stereocentre. One drawing is R and the other is S. They are nonsuperimposable mirror images, which is the definition of enantiomers. A single stereocentre cannot produce diastereomers or a meso form, and both drawings have the same carbon skeleton.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageAcidsTitle,
      passage: _passageAcids,
      prompt: 'The drawing of 2,3-dihydroxybutanedioic acid with both OH groups on the left is optically inactive because',
      choices: const [
        Choice('a', 'it is a meso compound, with a plane of symmetry'),
        Choice('b', 'it is a 1:1 mixture of enantiomers'),
        Choice('c', 'it has no stereocentres'),
        Choice('d', 'Fischer projections cannot represent chiral molecules'),
      ],
      answer: 'a',
      explanation:
          'Both OH groups on the left give (2S,3R). A plane between the two stereocentres maps one half of the molecule onto the other, so the molecule is achiral even though it has two stereocentres. The drawing is one molecule, not a mixture. The inactivity comes from that internal symmetry. Fischer projections represent chiral molecules perfectly well; the other enantiomer is the drawing with the two OH groups on opposite sides.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageAcidsTitle,
      passage: _passageAcids,
      prompt: 'The bottle that holds equal amounts of the two enantiomers of 2-hydroxypropanoic acid is inactive for a different reason. That sample is',
      choices: const [
        Choice('a', 'a racemate, inactive because the two rotations cancel'),
        Choice('b', 'meso, inactive because each molecule has a mirror plane'),
        Choice('c', 'a single enantiomer whose rotation happens to be zero'),
        Choice('d', 'a pair of geometrical isomers'),
      ],
      answer: 'a',
      explanation:
          'Equal amounts of R and S give a racemate. Each molecule is chiral and would rotate light, but the rotations are opposite and cancel. 2-Hydroxypropanoic acid has only one stereocentre, so it has no meso form. A single enantiomer of this acid does rotate light. The two components are mirror images, not cis–trans isomers.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageConformTitle,
      passage: _passageConform,
      prompt: 'The staggered arrangement in which the methyl groups are as far apart as possible is called',
      choices: const [
        Choice('a', 'anti'),
        Choice('b', 'gauche'),
        Choice('c', 'cis'),
        Choice('d', 'eclipsed'),
      ],
      answer: 'a',
      explanation:
          'The greatest separation of the two methyl groups on the central bond of butane is a dihedral angle of 180°. That staggered conformer is the anti conformer, and it is the energy minimum. Gauche is the other staggered form, at 60°. Eclipsed means a dihedral angle of 0°. Cis is not a name for a butane conformer.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageConformTitle,
      passage: _passageConform,
      prompt: 'The staggered arrangement with the methyl groups 60° apart is higher in energy than the first one because',
      choices: const [
        Choice('a', 'the methyl groups crowd each other'),
        Choice('b', 'a carbon–carbon bond has broken'),
        Choice('c', 'the molecule has become aromatic'),
        Choice('d', 'the two forms are enantiomers with different boiling points'),
      ],
      answer: 'a',
      explanation:
          'At 60° the methyl groups are close enough to repel each other. That gauche interaction raises the energy by a few kilojoules per mole above the anti conformer. The bond is only rotating, not breaking. Butane is not aromatic. The two gauche forms are enantiomeric conformations of each other, but they interconvert quickly and do not have different boiling points as separate bottled compounds.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageConformTitle,
      passage: _passageConform,
      prompt: 'When one methyl group sits directly in front of the other, the dihedral angle is',
      choices: const [
        Choice('a', '0°'),
        Choice('b', '60°'),
        Choice('c', '120°'),
        Choice('d', '180°'),
      ],
      answer: 'a',
      explanation:
          'Directly in front means the two methyl groups eclipse. The dihedral angle of an eclipsed pair is 0°. 60° is gauche, 180° is anti, and 120° is not a special minimum or maximum for this bond. The eclipsed methyl–methyl arrangement is the highest point on the rotation.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageConformTitle,
      passage: _passageConform,
      prompt: 'These arrangements of butane are',
      choices: const [
        Choice('a', 'conformers of one constitution'),
        Choice('b', 'configurational isomers that can be separated and stored at room temperature'),
        Choice('c', 'functional isomers'),
        Choice('d', 'tautomers'),
      ],
      answer: 'a',
      explanation:
          'The connectivity never changes, and the only motion is rotation about a single bond. The barrier is low, so at room temperature the forms interconvert far too quickly to be bottled separately. They are conformers. Configurational isomers would survive that rotation. Functional isomers differ in the functional group, and tautomers differ by the position of a proton and a pi bond.',
    ),
  ],
);

Question _matrix(
  int number,
  String prompt,
  List<MatchEntry> left,
  List<MatchEntry> right,
  String answer,
  String explanation,
) {
  return Question(
    id: '$_e4-q$number',
    number: number,
    kind: QuestionKind.match,
    prompt: prompt,
    column1: left,
    column2: right,
    answer: answer,
    explanation: explanation,
  );
}

final Exercise isoExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'One entry in Column I may match more than one code',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each pair with every description that fits.',
      const [
        MatchEntry('A', '(2R,3R) and (2S,3S)-2,3-dihydroxybutanedioic acid'),
        MatchEntry('B', '(2R,3R) and the meso form of the same acid'),
        MatchEntry('C', 'Anti butane and gauche butane'),
        MatchEntry('D', 'Cis-2-butene and trans-2-butene'),
      ],
      const [
        MatchEntry('P', 'Enantiomers'),
        MatchEntry('Q', 'Diastereomers'),
        MatchEntry('R', 'Conformers'),
        MatchEntry('S', 'Configurational isomers'),
      ],
      'A-PS,B-QS,C-R,D-QS',
      'The (2R,3R) and (2S,3S) acids are mirror images, so they are enantiomers, and they do not interconvert by rotation, so they are also configurational isomers. The meso form is not the mirror image of (2R,3R); that pair are diastereomers, and both are configurational. Anti and gauche butane differ only by rotation, so they are conformers and not configurational isomers. Cis and trans 2-butene are stereoisomers that are not mirror images, hence diastereomers, and the double bond keeps them from interconverting, so they are configurational.',
    ),
    _matrix(
      2,
      'Match each sample with every property it has.',
      const [
        MatchEntry('A', 'A pure sample of meso-2,3-dihydroxybutanedioic acid'),
        MatchEntry('B', 'A racemic sample of 2-hydroxypropanoic acid'),
        MatchEntry('C', 'A pure sample of (2R,3R)-2,3-dihydroxybutanedioic acid'),
        MatchEntry('D', 'The gauche conformer of 1,2-dibromoethane'),
      ],
      const [
        MatchEntry('P', 'The sample does not rotate plane-polarised light'),
        MatchEntry('Q', 'It contains chiral molecules'),
        MatchEntry('R', 'It has a net dipole from the two C–Br bonds'),
        MatchEntry('S', 'The enantiomers in it can be separated'),
      ],
      'A-P,B-PQS,C-Q,D-R',
      'The meso acid is one achiral compound, so it is optically inactive and there are no enantiomers to separate. A racemate of 2-hydroxypropanoic acid is inactive by cancellation, every molecule is chiral, and the enantiomers can be separated. The pure (2R,3R) acid is chiral and optically active, so only “contains chiral molecules” fits. In gauche 1,2-dibromoethane the C–Br bonds are 60° apart and do not cancel, so the conformer has a net dipole. The anti conformer is the one whose dipole is about zero.',
    ),
    _matrix(
      3,
      'Match each pair with every kind of isomerism that describes it.',
      const [
        MatchEntry('A', 'Ethanol and methoxymethane'),
        MatchEntry('B', 'Pentane and 2-methylbutane'),
        MatchEntry('C', 'Propanone and CH2=C(OH)CH3'),
        MatchEntry('D', '(E)-2-butene and (Z)-2-butene'),
      ],
      const [
        MatchEntry('P', 'Functional isomers'),
        MatchEntry('Q', 'Chain isomers'),
        MatchEntry('R', 'Tautomers'),
        MatchEntry('S', 'Stereoisomers'),
      ],
      'A-P,B-Q,C-PR,D-S',
      'Ethanol and methoxymethane are C2H6O with different functional groups, and they are not in tautomer equilibrium. Pentane and 2-methylbutane are both alkanes of formula C5H12 with different skeletons, so they are chain isomers. Propanone and its enol differ in functional group, and they interconvert by moving a proton and a pi bond, so they are tautomers as well as functional isomers. (E) and (Z)-2-butene have the same connectivity and a different arrangement in space that is not a mirror-image pair of the whole set of groups in the enantiomer sense; they are stereoisomers.',
    ),
    _matrix(
      4,
      'Match each drawing convention with what it means.',
      const [
        MatchEntry('A', 'A horizontal bond in a Fischer projection'),
        MatchEntry('B', 'A hashed wedge'),
        MatchEntry('C', 'A solid wedge'),
        MatchEntry('D', 'The circle in a Newman projection'),
      ],
      const [
        MatchEntry('P', 'The bond points toward the viewer'),
        MatchEntry('Q', 'The bond points away from the viewer'),
        MatchEntry('R', 'It stands for the rear carbon'),
        MatchEntry('S', 'It stands for a stereogenic double bond'),
      ],
      'A-P,B-Q,C-P,D-R',
      'Fischer horizontal bonds are wedges and come out of the page toward the viewer. A hashed wedge, narrow at the stereocentre and wide at the substituent, goes back into the page. A solid wedge comes forward. In a Newman projection the circle is the rear carbon, the front carbon is the centre of the circle, and the bonds that start on the rim belong to the rear carbon. None of these marks is itself a double bond.',
    ),
    _matrix(
      5,
      'Match each compound with every count or property that fits.',
      const [
        MatchEntry('A', 'The set of stereoisomers of 2,3-dichlorobutane'),
        MatchEntry('B', 'The set of stereoisomers of 2,3-dichloropentane'),
        MatchEntry('C', 'The meso stereoisomer of 2,3-dichlorobutane'),
        MatchEntry('D', 'One enantiomer of 2,3-dichloropentane, taken alone'),
      ],
      const [
        MatchEntry('P', 'The constitution has three stereoisomers'),
        MatchEntry('Q', 'The constitution has four stereoisomers'),
        MatchEntry('R', 'This species is achiral'),
        MatchEntry('S', 'This species is chiral'),
      ],
      'A-P,B-Q,C-R,D-S',
      '2,3-Dichlorobutane has two equivalent stereocentres, so the count is the enantiomeric pair plus one meso form, three in all. 2,3-Dichloropentane has two dissimilar stereocentres and no meso form, so the count is four. The meso stereoisomer is the achiral member of the butane set. Any single enantiomer of the pentane is chiral; the “four” belongs to the whole set, not to that one bottled enantiomer.',
    ),
  ],
);

final Exercise isoExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of isomers, stereocentres, and conformations',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt: 'How many stereoisomers does 2,3-dichloropentane have?',
      answer: '4',
      explanation:
          'C2 and C3 are both stereocentres. C2 carries a methyl group on one side and C3 carries an ethyl group on the other, so the two centres are not equivalent and no isomer has a mirror plane. There is no meso form. Two different stereocentres give 2^2 = 4 stereoisomers.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt: 'How many stereoisomers does 2,3-dichlorobutane have, including the meso form?',
      answer: '3',
      explanation:
          'C2 and C3 are equivalent stereocentres in CH3CHClCHClCH3. The (2R,3R) and (2S,3S) isomers are enantiomers. The (2R,3S) isomer has a mirror plane and is meso, and it is a single compound, not a pair. The total is 3, one less than the 4 you would get from two dissimilar centres.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt: 'How many geometrical isomers does Ph–CH=CH–CH=CH–CH=CH–CH3 have?',
      answer: '8',
      explanation:
          'All three double bonds are stereogenic, and the chain ends are different, so none of the E/Z combinations collapse into each other. Each double bond has two configurations. 2^3 = 8.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt: 'How many geometrical isomers does hexa-2,4-diene, CH3CH=CH–CH=CHCH3, have?',
      answer: '3',
      explanation:
          'Each double bond may be E or Z, which suggests four combinations. The chain is symmetric, so (2E,4Z) is the same molecule as (2Z,4E) turned end for end. The distinct isomers are (2E,4E), (2Z,4Z) and (2E,4Z). That is 3.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt: 'How many constitutional isomers of formula C4H10O are there, counting alcohols and ethers together?',
      answer: '7',
      explanation:
          'The alcohols are butan-1-ol, butan-2-ol, 2-methylpropan-1-ol and 2-methylpropan-2-ol. The ethers are ethoxyethane, 1-methoxypropane and 2-methoxypropane. Four alcohols plus three ethers is 7. No other connectivity of C4H10O remains.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'How many of these compounds can show geometrical isomerism? 1-Butene, 2-butene, 1,1-dichloroethene, 1,2-dichloroethene, 2-methylpropene.',
      answer: '2',
      explanation:
          '2-Butene and 1,2-dichloroethene each have two different groups on both alkene carbons. 1-Butene and 2-methylpropene each have a carbon that carries two identical groups (two hydrogens, or two methyl groups). 1,1-Dichloroethene has both chlorines on one carbon. Only two of the five qualify.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt: 'How many tetrahedral stereocentres are there in meso-2,3-dihydroxybutanedioic acid?',
      answer: '2',
      explanation:
          'Each of the two central carbons is attached to H, OH, CO2H and the other CH(OH)CO2H group, so each is a stereocentre. The molecule is achiral because a mirror plane relates the two centres, but the stereocentres are still present. The count is 2, not 0.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt:
          'How many staggered conformations does butane have about the C2–C3 bond? Count the two gauche forms separately.',
      answer: '3',
      explanation:
          'One staggered conformer is anti, with the methyl groups 180° apart. Two more are gauche, at +60° and at −60°. Those two gauche forms are nonsuperimposable mirror images, so they count separately even though they have the same energy. The staggered total is 3. The eclipsed arrangements are not staggered.',
    ),
  ],
);
