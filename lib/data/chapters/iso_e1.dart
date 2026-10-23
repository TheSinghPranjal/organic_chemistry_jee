import '../../models/content.dart';
import '../../sketch/gallery.dart';
import '../../sketch/projections.dart';

const _l1 = 'iso-e1-l1';
const _l2 = 'iso-e1-l2';
const _l3 = 'iso-e1-l3';

final Exercise isoExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Structural isomers, tautomerism, and cis–trans',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Which pair are functional isomers?',
      choices: const [
        Choice('a', 'Butane and 2-methylpropane'),
        Choice('b', 'Ethanol and methoxymethane'),
        Choice('c', 'Propan-1-ol and propan-2-ol'),
        Choice('d', 'The anti and gauche arrangements of butane'),
      ],
      answer: 'b',
      explanation:
          'Functional isomers share a molecular formula and differ in the functional group. Ethanol and methoxymethane are both C2H6O, one an alcohol and the other an ether. Butane and 2-methylpropane differ only in how the chain is branched. The two propanols differ in the position of the same OH group. Anti and gauche butane are conformations of a single constitution.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'Which compound is a chain isomer of pentane?',
      choices: const [
        Choice('a', 'Pent-1-ene'),
        Choice('b', 'Cyclopentane'),
        Choice('c', '2-Methylbutane'),
        Choice('d', 'Pentan-2-one'),
      ],
      answer: 'c',
      explanation:
          'Chain isomers have the same formula and the same kind of functional group, with the carbon atoms joined in a different skeleton. 2-Methylbutane is C5H12, like pentane, but one carbon is a branch. Pent-1-ene and cyclopentane are C5H10. Pentan-2-one contains oxygen, so it is not an isomer of pentane at all.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'Propan-1-ol and propan-2-ol are best described as',
      choices: const [
        Choice('a', 'chain isomers'),
        Choice('b', 'position isomers'),
        Choice('c', 'metamers'),
        Choice('d', 'tautomers'),
      ],
      answer: 'b',
      explanation:
          'Both molecules are C3H8O alcohols, and the carbon skeleton is the same straight chain of three. The OH group is on C1 in one and on C2 in the other, so the difference is the position of a group. Metamers differ in the alkyl pieces attached to a polyvalent atom such as ether oxygen. Tautomers interconvert by relocating a proton and a pi bond.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Which compound can form an enol tautomer?',
      choices: const [
        Choice('a', 'Benzophenone, Ph–CO–Ph'),
        Choice('b', 'Propanone'),
        Choice('c', 'Ethoxyethane'),
        Choice('d', '2,2-Dimethylpropane'),
      ],
      answer: 'b',
      explanation:
          'Keto–enol tautomerism moves a hydrogen from a carbon next to a carbonyl onto the oxygen. Propanone has hydrogens on both methyl carbons, so it can become CH2=C(OH)CH3. Benzophenone has two phenyl rings and no hydrogen on a neighbouring carbon. An ether and an alkane have no carbonyl to enolise.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'Phenol exists almost entirely as the enol rather than as the cyclohexadienone keto form. The main reason is that the enol',
      choices: const [
        Choice('a', 'has a longer carbon chain'),
        Choice('b', 'keeps an aromatic ring'),
        Choice('c', 'contains no oxygen'),
        Choice('d', 'has no hydrogen that could move'),
      ],
      answer: 'b',
      explanation:
          'The keto tautomer of phenol is a cyclohexadienone. Writing that structure breaks the benzene ring. Phenol itself keeps six pi electrons in a ring, and that aromatic stabilisation outweighs the usual preference for a carbonyl over an enol. Phenol does have hydrogens on the ring, so the equilibrium is not blocked by a missing hydrogen; aromaticity decides it.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Which alkene can exist as cis and trans isomers?',
      choices: const [
        Choice('a', '1-Butene'),
        Choice('b', '2-Methylpropene'),
        Choice('c', '2-Butene'),
        Choice('d', 'Ethene'),
      ],
      answer: 'c',
      explanation:
          'Each carbon of the double bond must carry two different substituents. In 2-butene each alkene carbon carries H and CH3, so the methyl groups can sit on the same side or on opposite sides. 1-Butene and ethene end in CH2, and 2-methylpropene has two methyl groups on one carbon. Those three have no geometrical isomers.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'In the cis isomer drawn here, the two carbon–chlorine bond dipoles',
      figure: cisDichloroethene,
      choices: const [
        Choice('a', 'cancel, so the molecular dipole is zero'),
        Choice('b', 'point to the same side, so the molecular dipole is not zero'),
        Choice('c', 'make the molecule chiral'),
        Choice('d', 'mean the compound has no trans isomer'),
      ],
      answer: 'b',
      explanation:
          'Both chlorines lie on the same side of the double bond, and the two C–Cl dipoles add. The trans isomer points those dipoles in opposite directions, so they cancel and the dipole is zero. The cis isomer still has a plane of symmetry, through the double bond and between the chlorines, so it is not chiral. The trans compound is a real, separate geometrical isomer.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'How many stereoisomers does 2,3-dichlorobutane have?',
      choices: const [
        Choice('a', '2'),
        Choice('b', '3'),
        Choice('c', '4'),
        Choice('d', '5'),
      ],
      answer: 'b',
      explanation:
          'C2 and C3 are both stereocentres, and each is attached to H, Cl, CH3 and a CHClCH3 group. Because the two centres match, a mirror plane is possible. The (2R,3S) isomer is that meso form. The (2R,3R) and (2S,3S) isomers are enantiomers of each other. The total is three stereoisomers, not the four you would count if the ends of the chain were different.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'A meso compound is best described as a substance that',
      choices: const [
        Choice('a', 'is a 1:1 mixture of two enantiomers'),
        Choice('b', 'has stereocentres and is nevertheless achiral'),
        Choice('c', 'has no stereocentres and is chiral'),
        Choice('d', 'rotates plane-polarised light'),
      ],
      answer: 'b',
      explanation:
          'A meso compound contains stereocentres, but a plane of symmetry, or another symmetry element, makes the molecule identical to its mirror image. It is one achiral compound, not a mixture, and a pure sample does not rotate plane-polarised light. A racemate is the 1:1 mixture of enantiomers. That mixture is also inactive, but for a different reason: the rotations cancel.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'The anti and gauche arrangements of butane are',
      choices: const [
        Choice('a', 'configurational isomers that can be bottled separately at room temperature'),
        Choice('b', 'conformers that interconvert by rotation about a single bond'),
        Choice('c', 'functional isomers'),
        Choice('d', 'geometrical isomers about a double bond'),
      ],
      answer: 'b',
      explanation:
          'The two arrangements have the same connectivity. They differ by rotation about the C2–C3 bond, and the barrier is small enough that they swap rapidly at room temperature. Configurational isomers, including geometrical isomers of an alkene, do not interconvert that way: a bond would have to break. Anti and gauche butane are therefore conformers of one compound.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'Diethyl ether and 1-methoxypropane are',
      choices: const [
        Choice('a', 'metamers'),
        Choice('b', 'tautomers'),
        Choice('c', 'enantiomers'),
        Choice('d', 'the same compound'),
      ],
      answer: 'a',
      explanation:
          'Both are ethers of formula C4H10O. In diethyl ether the oxygen lies between two ethyl groups. In 1-methoxypropane it lies between a methyl group and a propyl group. Isomers that differ in the carbon groups attached to the same polyvalent atom are metamers. They do not equilibrate by moving a proton, and neither molecule has a stereocentre.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'Which formula is the enol tautomer of propanone?',
      choices: const [
        Choice('a', 'CH3CH2CHO'),
        Choice('b', 'CH2=C(OH)CH3'),
        Choice('c', 'CH3OCH=CH2'),
        Choice('d', 'CH3CH(OH)CH3'),
      ],
      answer: 'b',
      explanation:
          'Shifting a hydrogen from a methyl carbon of propanone onto the oxygen, and shifting the pi bond between those two carbons, produces CH2=C(OH)CH3. Propanal is a functional isomer with a different connectivity, not the product of that shift. Methyl vinyl ether is an ether. Propan-2-ol is what you get by adding hydrogen across the carbonyl, not by tautomerism.',
    ),
  ],
);

final Exercise isoExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'E/Z, R/S, Fischer projections, enantiomers, and meso forms',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'The drawing is 3-methylpent-2-ene. What is its configuration?',
      figure: alkeneE,
      choices: const [
        Choice('a', 'E, because the higher-priority groups are on opposite sides'),
        Choice('b', 'Z, because the two methyl groups are both on top'),
        Choice('c', 'cis, because each alkene carbon carries a methyl group'),
        Choice('d', 'Neither E nor Z, because one carbon carries two alkyl groups'),
      ],
      answer: 'a',
      explanation:
          'On the left-hand alkene carbon, CH3 outranks H. On the right-hand carbon the ethyl carbon is attached to C, H and H, while the methyl carbon is attached to H, H and H, so ethyl outranks methyl. Ethyl is at the lower right and the higher-priority methyl is at the upper left. Those two groups are on opposite sides, which is the E configuration. Seeing two methyl groups on top is not the CIP test, and a double bond with two different groups on each carbon is stereogenic even when neither group is hydrogen.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt:
          'This is a Fischer projection of 2-hydroxypropanoic acid. What is the configuration of the stereocentre?',
      figure: fischerRLactic,
      choices: const [
        Choice('a', 'R'),
        Choice('b', 'S'),
        Choice('c', 'The carbon is not a stereocentre'),
        Choice('d', 'E'),
      ],
      answer: 'a',
      explanation:
          'In a Fischer projection the horizontal bonds are wedges, so both OH and H point toward you and H is in front. The priorities are OH, then CO2H, then CH3, then H. With OH on the right, the order OH → CO2H → CH3 runs counter-clockwise on the page. A counter-clockwise order observed while H is in front is R. Treating H as if it were behind the page would flip the label to S, which is the usual trap. E and Z describe double bonds, and this carbon has four different substituents.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'This Fischer projection of 2,3-dihydroxybutanedioic acid represents',
      figure: fischerMesoTartaric,
      choices: const [
        Choice('a', 'the (2R,3R) enantiomer'),
        Choice('b', 'the meso form'),
        Choice('c', 'a racemic mixture drawn as one picture'),
        Choice('d', 'a pair of conformers'),
      ],
      answer: 'b',
      explanation:
          'The vertical bonds are hashes, so the CO2H groups point away, and the horizontal OH and H bonds point toward you. At the upper carbon, OH on the left is S. At the lower carbon, OH on the left, with CO2H downward, is R. The result is (2S,3R). A plane halfway between the two stereocentres reflects one half onto the other, so the molecule is the meso form. It is one achiral compound, not a racemate and not the (2R,3R) enantiomer.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: '(2R,3R)-2,3-Dichloropentane and (2R,3S)-2,3-dichloropentane are',
      choices: const [
        Choice('a', 'enantiomers'),
        Choice('b', 'diastereomers'),
        Choice('c', 'one meso compound drawn twice'),
        Choice('d', 'conformers'),
      ],
      answer: 'b',
      explanation:
          'The two names match at C2 and differ at C3. Enantiomers have the opposite configuration at every stereocentre, so these two are not mirror images. Stereoisomers that are not mirror images are diastereomers. The chain is CH3–CHCl–CHCl–CH2CH3, so the ends are different and neither stereoisomer has a mirror plane. Rotation about a single bond cannot turn an R label into an S label.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'How many stereoisomers does 2,3-dichloropentane have?',
      choices: const [
        Choice('a', '2'),
        Choice('b', '3'),
        Choice('c', '4'),
        Choice('d', '8'),
      ],
      answer: 'c',
      explanation:
          'C2 is attached to H, Cl, CH3 and CHClCH2CH3. C3 is attached to H, Cl, CHClCH3 and CH2CH3. Both are stereocentres. A methyl end and an ethyl end are different, so no stereoisomer has a plane of symmetry and there is no meso form. Two dissimilar stereocentres give 2 squared, which is 4: the RR, RS, SR and SS isomers.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'What is the configuration of this wedge–dash drawing of 2-chlorobutane?',
      figure: wedgeDashR,
      choices: const [
        Choice('a', 'R'),
        Choice('b', 'S'),
        Choice('c', 'cis'),
        Choice('d', 'meso'),
      ],
      answer: 'a',
      explanation:
          'The priorities are Cl, then CH2CH3, then CH3, then H. The hashed bond puts H away from you, so the other three can be read directly. Chlorine is the wedged bond toward the top, the ethyl group is at the lower right, and the methyl group is on the left. Chlorine to ethyl to methyl runs clockwise, which is R. A molecule with one stereocentre is never meso, and cis is a label for a double bond or a disubstituted ring.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt:
          'A bottle of 2-hydroxypropanoic acid does not rotate plane-polarised light. Which statement can explain that?',
      choices: const [
        Choice('a', 'The sample is a racemate, so the molecules are chiral but the rotations cancel'),
        Choice('b', 'The compound is meso, because it has two stereocentres'),
        Choice('c', '2-Hydroxypropanoic acid has no stereocentre'),
        Choice('d', 'The sample must be the cis isomer of an alkene'),
      ],
      answer: 'a',
      explanation:
          '2-Hydroxypropanoic acid has one stereocentre, the carbon that carries OH, so a single enantiomer is optically active and the compound cannot be meso. A 1:1 mixture of the R and S enantiomers gives equal and opposite rotations, and the sample is inactive even though every molecule is chiral. That external cancellation is not the same thing as a meso structure. The compound is not an alkene.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'Penta-2,3-diene, drawn here, is chiral even though it has no tetrahedral stereocentre. Why?',
      figure: alleneChiral,
      choices: const [
        Choice('a', 'The ends lie in perpendicular planes, and each end has two different groups'),
        Choice('b', 'A plane of symmetry passes through both methyl groups'),
        Choice('c', 'Every cumulated diene is a cis–trans pair and nothing more'),
        Choice('d', 'The central carbon is sp3'),
      ],
      answer: 'a',
      explanation:
          'In an allene the central carbon is sp and the two terminal carbons are sp2. The two terminal planes are perpendicular. Each end of this molecule carries H and CH3, so the mirror image cannot be turned to match the original. The chirality is axial. A plane through both methyl groups would make it achiral, and it does not have one. A cumulene with an odd number of double bonds has its ends in one plane and can show cis–trans instead.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'How many geometrical isomers does Ph–CH=CH–CH=CH–CH3 have?',
      choices: const [
        Choice('a', '2'),
        Choice('b', '3'),
        Choice('c', '4'),
        Choice('d', '8'),
      ],
      answer: 'c',
      explanation:
          'Both double bonds are stereogenic: each carbon carries two different groups, phenyl versus H at one end and methyl versus H at the other. The two ends of the chain are different, so (E,E), (E,Z), (Z,E) and (Z,Z) are four different compounds. Turning the chain around does not make (E,Z) the same as (Z,E). Two independent stereogenic double bonds give four geometrical isomers.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'The drawing is again 3-methylpent-2-ene. What is its configuration?',
      figure: alkeneZ,
      choices: const [
        Choice('a', 'Z'),
        Choice('b', 'E'),
        Choice('c', 'The double bond is not stereogenic'),
        Choice('d', 'meso'),
      ],
      answer: 'a',
      explanation:
          'On the left-hand carbon CH3 outranks H. On the right-hand carbon CH2CH3 outranks CH3, because the ethyl carbon is attached to C, H and H while the methyl carbon is attached to H, H and H. Both of those higher-priority groups are on the upper side of the double bond, so they are together. Together is Z. The double bond has two different groups on each carbon, so it is stereogenic. Meso is a label for an achiral molecule that contains stereocentres, not for an alkene.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt:
          'In this Fischer projection the upper OH is on the right and the lower OH is on the left. The configuration is',
      figure: fischerRRTartaric,
      choices: const [
        Choice('a', 'meso'),
        Choice('b', '(2R,3R)'),
        Choice('c', '(2S,3S)'),
        Choice('d', '(2S,3R)'),
      ],
      answer: 'b',
      explanation:
          'Horizontal bonds come toward you. At the upper carbon, OH on the right is the same arrangement that makes 2-hydroxypropanoic acid R, so C2 is R. At the lower carbon, OH on the left and CO2H on the downward hash is R as well. Both stereocentres are R. The meso isomer is the one with both OH groups on the same side, which has opposite labels, (2S,3R), and a mirror plane. This drawing has no mirror plane.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'The Newman projection is a conformer of 1,2-dibromoethane. Which statement is correct?',
      figure: newmanAntiDibromo,
      choices: const [
        Choice('a', 'The bromines are anti, and the molecular dipole is about zero'),
        Choice('b', 'The bromines are gauche, and the molecular dipole is about zero'),
        Choice('c', 'This conformer is a geometrical isomer of the gauche form'),
        Choice('d', 'The anti conformer is chiral'),
      ],
      answer: 'a',
      explanation:
          'One bromine is at 12 o’clock on the front carbon and the other is at 6 o’clock on the rear carbon, so the Br–C–C–Br dihedral angle is 180°. The two C–Br dipoles point in opposite directions and cancel. In a gauche conformer they would sit 60° apart and a net dipole would remain. The anti and gauche forms interconvert by rotation, so they are conformers, and the anti form has a centre of symmetry, so it is achiral.',
    ),
  ],
);

final Exercise isoExercise1Level3 = Exercise(
  id: _l3,
  title: 'Level 3',
  topic: 'Stereoisomer counts, allenes, Newman and sawhorse conformations',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l3,
      number: 1,
      prompt: 'What does this Newman projection of butane show?',
      figure: newmanAntiButane,
      choices: const [
        Choice('a', 'The anti conformer, which is the most stable'),
        Choice('b', 'The gauche conformer, with the methyl groups 60° apart'),
        Choice('c', 'The fully eclipsed conformer'),
        Choice('d', 'A configurational isomer that does not rotate into the others'),
      ],
      answer: 'a',
      explanation:
          'The front methyl group is straight up and the rear methyl group is straight down, so the dihedral angle is 180°. That anti arrangement keeps the methyl groups as far apart as a rotation can put them, and it is the energy minimum for the central bond of butane. A gauche drawing would put the rear methyl near 2 o’clock. A fully eclipsed drawing would stack the two methyl labels. All of these are conformers of one configuration.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 2,
      prompt: 'Compared with anti butane, the conformer in this Newman projection is',
      figure: newmanGaucheButane,
      choices: const [
        Choice('a', 'lower in energy, because the methyl groups are closer'),
        Choice('b', 'higher in energy, because the methyl groups are 60° apart'),
        Choice('c', 'the transition state in which the central C–C bond breaks'),
        Choice('d', 'a meso compound'),
      ],
      answer: 'b',
      explanation:
          'The rear methyl group is at 2 o’clock and the front methyl group is at 12 o’clock, a dihedral angle of 60°. That is a gauche conformer. The methyl groups crowd each other, so this staggered minimum sits a few kilojoules per mole above the anti conformer. It is not the eclipsed maximum, and the C–C bond is still intact. Butane has no stereocentre, so it cannot be meso.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 3,
      prompt:
          'In this sawhorse of butane the methyl groups lie on opposite sides of the central bond. What is the H3C–C–C–CH3 dihedral angle?',
      figure: sawhorseAntiButane,
      choices: const [
        Choice('a', '0°'),
        Choice('b', '60°'),
        Choice('c', '120°'),
        Choice('d', '180°'),
      ],
      answer: 'd',
      explanation:
          'A sawhorse places the rear carbon up and to the right of the front carbon. Here the front methyl group runs down to the left and the rear methyl group runs up to the right. Looking along the central bond, the two methyl groups are opposite each other. Opposite groups have a dihedral angle of 180°, which is the anti conformer. A 60° angle would put both methyl groups on the same side, and 0° would eclipse them.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 4,
      prompt:
          'The rear groups in this Newman projection are drawn a little to the side so the labels can be read. Which conformation do they represent?',
      figure: newmanEclipsedButane,
      choices: const [
        Choice('a', 'Anti, the energy minimum'),
        Choice('b', 'Gauche, a staggered minimum above the anti form'),
        Choice('c', 'Fully eclipsed, the highest point on this rotation'),
        Choice('d', 'A geometrical isomer of 2-butene'),
      ],
      answer: 'c',
      explanation:
          'The rear methyl label sits just beside the front methyl label, and each rear hydrogen sits just beside a front hydrogen. That is the drawing convention for a fully eclipsed conformer: the true dihedral angle is 0°, and the nudge is only there so one label does not hide the other. Eclipsing two methyl groups costs both torsional strain and a steric clash, so this is the maximum for rotation about the central bond of butane. 2-Butene is a different constitution.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 5,
      prompt: 'The most stable conformation of cyclohexane is the',
      choices: const [
        Choice('a', 'chair, in which the bonds are staggered'),
        Choice('b', 'boat, which eclipses bonds along two sides'),
        Choice('c', 'planar hexagon'),
        Choice('d', 'fully eclipsed conformer of butane'),
      ],
      answer: 'a',
      explanation:
          'In the chair every carbon–carbon bond is staggered, and the axial hydrogens are not forced into one another. The boat eclipses the bonds along its sides and pushes the flagpole hydrogens at the bow and the stern together, so it is higher in energy. A planar ring would be eclipsed all the way around and angle-strained as well. Butane’s eclipsed conformer is a different molecule.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 6,
      prompt: 'In the more stable chair of trans-1,4-dimethylcyclohexane, the methyl groups are',
      choices: const [
        Choice('a', 'both equatorial'),
        Choice('b', 'both axial'),
        Choice('c', 'one equatorial and one axial'),
        Choice('d', 'on an alkene, cis to each other'),
      ],
      answer: 'a',
      explanation:
          'Trans at positions 1 and 4 means one methyl is up and the other is down. In one chair both of those bonds are equatorial; in the ring-flipped chair both are axial. The diaxial chair has 1,3-diaxial interactions, so the diequatorial chair is the more stable one. An equatorial–axial pair is the cis-1,4 isomer, which cannot escape that arrangement by flipping.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 7,
      prompt: 'In a chair of cis-1,2-dimethylcyclohexane the two methyl groups are',
      choices: const [
        Choice('a', 'both equatorial'),
        Choice('b', 'one equatorial and one axial'),
        Choice('c', 'trans to each other'),
        Choice('d', 'attached to carbons that are not neighbours'),
      ],
      answer: 'b',
      explanation:
          'Cis on neighbouring carbons means both methyl groups are on the same face of the ring. In the chair, the two “up” bonds on adjacent carbons are one axial and one equatorial. A ring flip swaps which methyl is axial, but it never makes both equatorial. Both equatorial is the trans-1,2 relationship. The carbons numbered 1 and 2 are neighbours.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 8,
      prompt: 'How many geometrical isomers does Ph–CH=CH–CH=CH–CH=CH–CH3 have?',
      choices: const [
        Choice('a', '4'),
        Choice('b', '6'),
        Choice('c', '8'),
        Choice('d', '16'),
      ],
      answer: 'c',
      explanation:
          'Each of the three double bonds has two different substituents on each of its carbons. The ends of the chain are different, phenyl against methyl, so reflecting the chain end for end does not duplicate any isomer. Each double bond may independently be E or Z. Three such double bonds give 2 cubed, which is 8 geometrical isomers. A terminal =CH2 would not have counted, because that carbon would carry two hydrogens.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 9,
      prompt: 'Hexa-2,3,4-triene, CH3CH=C=C=CHCH3,',
      choices: const [
        Choice('a', 'is axially chiral in the same way as penta-2,3-diene'),
        Choice('b', 'can show cis–trans isomerism, because its ends lie in one plane'),
        Choice('c', 'has two tetrahedral stereocentres'),
        Choice('d', 'has no stereoisomers'),
      ],
      answer: 'b',
      explanation:
          'Two cumulated double bonds, as in an allene, put the ends in perpendicular planes and can create an axis of chirality. Three cumulated double bonds put the two terminal carbons back in the same plane. The methyl groups of hexa-2,3,4-triene can then lie on the same side of that plane or on opposite sides, which is a cis–trans pair. Neither terminal carbon is a tetrahedral stereocentre.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 10,
      prompt: 'A tert-butyl group on cyclohexane strongly prefers the equatorial position because',
      choices: const [
        Choice('a', 'the axial conformer has severe 1,3-diaxial repulsion'),
        Choice('b', 'the equatorial conformer is anti-aromatic'),
        Choice('c', 'an axial tert-butyl group is sp hybridised'),
        Choice('d', 'the two chairs are geometrical isomers and do not interconvert'),
      ],
      answer: 'a',
      explanation:
          'An axial substituent points into the axial hydrogens two carbons away on the same face. A tert-butyl group makes those 1,3-diaxial contacts expensive, so the equilibrium lies far toward the equatorial chair. Cyclohexane is not aromatic, and the substitution does not change the hybridisation of the ring carbon. The two chairs are conformers and they do interconvert; one of them is simply much more populated.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 11,
      prompt:
          'This sawhorse puts the two methyl groups of butane on the same side of the central bond. Relative to the anti sawhorse, it is',
      figure: sawhorseGaucheButane,
      choices: const [
        Choice('a', 'more stable'),
        Choice('b', 'less stable'),
        Choice('c', 'a different constitutional isomer'),
        Choice('d', 'the meso form of butane'),
      ],
      answer: 'b',
      explanation:
          'The rear methyl group has swung down toward the front methyl group instead of staying opposite it, so the dihedral angle is about 60°. That is the gauche conformer. The methyl groups repel each other more than they do at 180°, and this conformer is less stable than the anti conformer. The atoms are still connected in the same way, and butane has no stereocentres from which a meso form could be built.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 12,
      prompt: 'Which sample is optically inactive because the molecules themselves are achiral?',
      choices: const [
        Choice('a', 'A racemate of 2-chlorobutane'),
        Choice('b', 'The meso form of 2,3-dichlorobutane'),
        Choice('c', 'One enantiomer of 2-chlorobutane'),
        Choice('d', 'One enantiomer of penta-2,3-diene'),
      ],
      answer: 'b',
      explanation:
          'Meso-2,3-dichlorobutane has a mirror plane. Each molecule is superimposable on its mirror image, so the compound is achiral and cannot be resolved. A racemate of 2-chlorobutane is inactive only because the two enantiomers cancel; take one enantiomer out and it rotates light. A single enantiomer of 2-chlorobutane, and a single enantiomer of penta-2,3-diene, are both chiral and optically active.',
    ),
  ],
);
