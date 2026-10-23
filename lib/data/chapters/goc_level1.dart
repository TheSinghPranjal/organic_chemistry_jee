import '../../models/content.dart';
import '../../sketch/gallery.dart';

const _e1 = 'goc-l1-e1';
const _e2 = 'goc-l1-e2';
const _e3 = 'goc-l1-e3';

final Exercise gocLevel1Exercise1 = Exercise(
  id: _e1,
  title: 'Exercise 1',
  topic: 'Hybridisation and electronic effects',
  instruction:
      'Level 1. Only one option is correct. Start with hybridisation, polarity, and the four electronic effects.',
  questions: [
    singleQuestion(
      exerciseId: _e1,
      number: 1,
      figure: propyne,
      prompt: 'In the drawing of propyne, how many carbon atoms are sp hybridised?',
      choices: const [
        Choice('a', '0'),
        Choice('b', '1'),
        Choice('c', '2'),
        Choice('d', '3'),
      ],
      answer: 'c',
      explanation:
          'Propyne is CH3–C≡CH. Each carbon of the triple bond uses two sp hybrids and two p orbitals, so both are sp. The methyl carbon forms four single bonds and is sp3. The acidic hydrogen is attached to one of the sp carbons, but the number of sp carbons is two, not one and not three.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 2,
      prompt: 'Which molecule has the shortest carbon–carbon bond?',
      choices: const [
        Choice('a', 'ethane'),
        Choice('b', 'ethene'),
        Choice('c', 'ethyne'),
        Choice('d', 'benzene'),
      ],
      answer: 'c',
      explanation:
          'Bond length falls as bond order rises. Ethane has a single bond, benzene has a bond order of 1.5, ethene has a double bond, and ethyne has a triple bond. The triple bond holds the nuclei closest, so ethyne is the shortest. Approximate lengths are 154 pm, 139 pm, 134 pm, and 120 pm.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 3,
      prompt: 'Which group has the strongest −I effect?',
      choices: const [
        Choice('a', '–NO2'),
        Choice('b', '–F'),
        Choice('c', '–OH'),
        Choice('d', '–CH3'),
      ],
      answer: 'a',
      explanation:
          'A nitro group pulls electron density through the sigma bonds more strongly than fluorine or a hydroxy group. In the usual Lewis drawing the nitrogen carries a formal positive charge, which adds to the pull. A methyl group does the opposite: relative to hydrogen it is +I, so it is not an electron-withdrawing group at all.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 4,
      prompt: 'Which order of increasing +I effect is correct?',
      choices: const [
        Choice('a', '–H < –CH3 < –C2H5 < –CH(CH3)2'),
        Choice('b', '–CH(CH3)2 < –C2H5 < –CH3 < –H'),
        Choice('c', '–CH3 < –H < –C2H5 < –CH(CH3)2'),
        Choice('d', '–C2H5 < –CH3 < –CH(CH3)2 < –H'),
      ],
      answer: 'a',
      explanation:
          'Alkyl groups release electron density relative to hydrogen. The release grows as the attached carbon becomes more substituted, because more C–C and C–H bonds can feed electron density toward the point of attachment. The order is hydrogen, then methyl, then ethyl, then isopropyl.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 5,
      prompt: 'Two Lewis drawings are resonance forms when they',
      choices: const [
        Choice('a', 'join the same atoms in a different order'),
        Choice('b', 'keep the same connectivity and move only electrons'),
        Choice('c', 'have different molecular formulae'),
        Choice('d', 'differ in the total charge'),
      ],
      answer: 'b',
      explanation:
          'Resonance forms are alternative drawings of one species. The nuclei stay in place, the sigma skeleton stays in place, and the total number of electrons and the total charge stay the same. A different connectivity is an isomer, a different formula is a different compound, and a different total charge is a different ion.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 6,
      prompt: 'Which species is a nucleophile?',
      choices: const [
        Choice('a', 'BF3'),
        Choice('b', 'AlCl3'),
        Choice('c', 'CN−'),
        Choice('d', 'NO2+'),
      ],
      answer: 'c',
      explanation:
          'Cyanide carries a negative charge and has a lone pair on carbon, so it donates electrons to an electron-poor atom. BF3 and AlCl3 have incomplete octets and accept electron pairs; they are Lewis acids. The nitronium ion is positively charged and electron-poor. Those three are electrophiles.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 7,
      prompt: 'Which molecule has a dipole moment that is not zero?',
      choices: const [
        Choice('a', 'CO2'),
        Choice('b', 'BF3'),
        Choice('c', 'CCl4'),
        Choice('d', 'CH2Cl2'),
      ],
      answer: 'd',
      explanation:
          'Carbon dioxide is linear, boron trifluoride is trigonal planar, and tetrachloromethane is a symmetric tetrahedron. In each of those the bond dipoles cancel. Dichloromethane has two C–Cl bonds and two C–H bonds. Their vectors do not cancel, so the molecule is polar.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 8,
      prompt: 'The formal charge on nitrogen in NH4+ is',
      choices: const [
        Choice('a', '0'),
        Choice('b', '+1'),
        Choice('c', '−1'),
        Choice('d', '+2'),
      ],
      answer: 'b',
      explanation:
          'Formal charge is valence electrons, minus nonbonding electrons, minus half the bonding electrons. Nitrogen in the ammonium ion has five valence electrons, no lone pair, and four bonds: 5 − 0 − 8/2 = +1. Each hydrogen is formally neutral, and the +1 on nitrogen matches the charge of the ion.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 9,
      prompt: 'The electromeric effect is best described as',
      choices: const [
        Choice('a', 'a permanent polarisation of sigma bonds'),
        Choice('b', 'a temporary, complete shift of a pi pair toward one atom when a reagent attacks'),
        Choice('c', 'overlap of a C–H sigma bond with an adjacent empty p orbital'),
        Choice('d', 'delocalisation that is already present in the ground state'),
      ],
      answer: 'b',
      explanation:
          'The electromeric effect appears only while a reagent approaches a multiple bond. The pi pair moves fully onto one of the two atoms and returns if the reagent leaves. It is not a ground-state property. Permanent sigma polarisation is the inductive effect, sigma–p overlap is hyperconjugation, and ground-state delocalisation is resonance.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 10,
      prompt: 'Which species is stabilised by resonance?',
      choices: const [
        Choice('a', 'ethane'),
        Choice('b', 'buta-1,3-diene'),
        Choice('c', 'chloroethane'),
        Choice('d', 'cyclopropane'),
      ],
      answer: 'b',
      explanation:
          'Buta-1,3-diene has two double bonds separated by one single bond, so the pi electrons spread over four carbons. Ethane and cyclopropane have only sigma bonds. The C–Cl bond of chloroethane is polar by induction; the chlorine lone pairs are not conjugated with a pi bond.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 11,
      prompt: 'The positively charged carbon of a simple alkyl carbocation is',
      choices: const [
        Choice('a', 'sp3'),
        Choice('b', 'sp2'),
        Choice('c', 'sp'),
        Choice('d', 'sp3d'),
      ],
      answer: 'b',
      explanation:
          'That carbon has three sigma bonds and an empty p orbital. Three electron domains give a trigonal planar shape, which is sp2 hybridisation. The empty orbital is the unhybridised p orbital. That is why a nucleophile can approach from either face and why a neighbouring sigma bond can overlap with the empty orbital.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 12,
      prompt: 'Hyperconjugation is',
      choices: const [
        Choice('a', 'donation from a neighbouring C–H or C–C sigma bond into an adjacent p orbital or pi bond'),
        Choice('b', 'complete transfer of a proton from one molecule to another'),
        Choice('c', 'overlap of two double bonds that are separated by two sp3 carbons'),
        Choice('d', 'a change in which atoms are bonded to each other'),
      ],
      answer: 'a',
      explanation:
          'In hyperconjugation a filled sigma orbital overlaps sideways with an adjacent empty or partly filled p orbital, or with a pi bond. It stabilises carbocations, radicals, and more substituted alkenes. Proton transfer is an acid–base reaction. Double bonds separated by two saturated carbons are isolated, not conjugated. Moving atoms would make a different compound.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 13,
      prompt: 'Which species is an electrophile?',
      choices: const [
        Choice('a', 'water'),
        Choice('b', 'ammonia'),
        Choice('c', 'SO3'),
        Choice('d', 'chloride ion'),
      ],
      answer: 'c',
      explanation:
          'In sulfur trioxide the sulfur is electron-deficient and accepts a lone pair. That is the electrophile in aromatic sulfonation. Water and ammonia have lone pairs and act as nucleophiles. Chloride is negatively charged and is also a nucleophile.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 14,
      prompt: 'Which statement about the inductive effect is correct?',
      choices: const [
        Choice('a', 'It is a permanent polarisation through sigma bonds, and it weakens quickly along a chain'),
        Choice('b', 'It is observed only while a molecule is irradiated'),
        Choice('c', 'It moves atoms as well as electrons'),
        Choice('d', 'It is observed only in carbocations'),
      ],
      answer: 'a',
      explanation:
          'A difference in electronegativity polarises a sigma bond, and that polarisation induces a smaller one in the next bond. The effect is present in the ground state and fades within a few bonds. It does not need light, it does not relocate nuclei, and neutral molecules show it as well as ions.',
    ),
  ],
);

final Exercise gocLevel1Exercise2 = Exercise(
  id: _e2,
  title: 'Exercise 2',
  topic: 'Acidity, basicity, and stability',
  instruction:
      'Level 1. Only one option is correct. Compare acids, bases, and the stability of intermediates.',
  questions: [
    singleQuestion(
      exerciseId: _e2,
      number: 1,
      prompt: 'Which is the strongest acid?',
      choices: const [
        Choice('a', 'methane'),
        Choice('b', 'ammonia'),
        Choice('c', 'water'),
        Choice('d', 'hydrogen fluoride'),
      ],
      answer: 'd',
      explanation:
          'The acidic hydrogen is attached to carbon, nitrogen, oxygen, then fluorine. The conjugate base becomes more stable as that atom becomes more electronegative and holds the negative charge more tightly. Hydrogen fluoride is a weak acid in water, but it is far stronger than water, ammonia, or methane.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 2,
      prompt: 'Which is the strongest acid?',
      choices: const [
        Choice('a', 'ethanol'),
        Choice('b', 'phenol'),
        Choice('c', '4-nitrophenol'),
        Choice('d', '4-methoxyphenol'),
      ],
      answer: 'c',
      explanation:
          'Phenol is more acidic than ethanol because the phenoxide ion spreads its charge into the ring. A para nitro group withdraws by induction and by resonance, so 4-nitrophenoxide is stabilised further. A para methoxy group donates by resonance and makes 4-methoxyphenol a little less acidic than phenol. 4-Nitrophenol is the strongest of the four.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 3,
      prompt: 'Which is the strongest base in water?',
      choices: const [
        Choice('a', 'aniline'),
        Choice('b', '4-nitroaniline'),
        Choice('c', 'cyclohexylamine'),
        Choice('d', 'pyrrole'),
      ],
      answer: 'c',
      explanation:
          'Cyclohexylamine is an ordinary aliphatic amine. Its lone pair sits in an sp3 orbital and is available to a proton. In aniline the lone pair is delocalised into the ring, and a para nitro group withdraws still more electron density, so 4-nitroaniline is weaker. In pyrrole the lone pair is part of the aromatic sextet and is not available.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 4,
      prompt: 'Which drawn cation is the most stable?',
      choices: [
        Choice('a', 'methyl cation', figure: methylCation),
        Choice('b', 'ethyl cation', figure: ethylCation),
        Choice('c', 'isopropyl cation', figure: isopropylCation),
        Choice('d', 'tert-butyl cation', figure: tertButylCation),
      ],
      answer: 'd',
      explanation:
          'Alkyl groups stabilise a carbocation by induction and by hyperconjugation. The methyl cation has no alkyl group. The ethyl cation has three neighbouring C–H bonds, the isopropyl cation has six, and the tert-butyl cation has nine. Stability increases in that order, so the tert-butyl cation is the most stable.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 5,
      prompt: 'Which radical is the most stable?',
      choices: const [
        Choice('a', 'methyl radical'),
        Choice('b', 'ethyl radical'),
        Choice('c', 'isopropyl radical'),
        Choice('d', 'tert-butyl radical'),
      ],
      answer: 'd',
      explanation:
          'A half-filled p orbital is stabilised by the same alkyl substitution that stabilises a carbocation. More alpha C–H bonds can hyperconjugate with it. The tert-butyl radical is the most stable of these four, and the methyl radical, which has no such bonds, is the least stable.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 6,
      prompt: 'Which carbanion is the most stable?',
      choices: const [
        Choice('a', 'tert-butyl anion'),
        Choice('b', 'isopropyl anion'),
        Choice('c', 'ethyl anion'),
        Choice('d', 'methyl anion'),
      ],
      answer: 'd',
      explanation:
          'A carbanion is electron-rich. Alkyl groups donate electron density and make that charge less comfortable. The effect is strongest for the tert-butyl anion and absent for the methyl anion, so the methyl anion is the most stable of these four. This is the reverse of the carbocation order.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 7,
      prompt: 'Which alkene is the most stable?',
      choices: const [
        Choice('a', 'ethene'),
        Choice('b', 'propene'),
        Choice('c', 'trans-but-2-ene'),
        Choice('d', '2,3-dimethylbut-2-ene'),
      ],
      answer: 'd',
      explanation:
          'Alkyl groups stabilise a carbon–carbon double bond by hyperconjugation. Ethene has none, propene has one, trans-but-2-ene has two, and 2,3-dimethylbut-2-ene has four. The tetrasubstituted alkene is the most stable.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 8,
      prompt: 'Which is the strongest acid?',
      choices: const [
        Choice('a', 'ethanoic acid'),
        Choice('b', 'chloroethanoic acid'),
        Choice('c', 'dichloroethanoic acid'),
        Choice('d', 'trichloroethanoic acid'),
      ],
      answer: 'd',
      explanation:
          'Each chlorine atom withdraws electrons by the inductive effect and stabilises the carboxylate ion. The withdrawals add, so acidity rises from ethanoic acid to chloroethanoic acid, then to the dichloro acid, and then to trichloroethanoic acid. The trichloro acid is the strongest.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 9,
      prompt: 'Which is the strongest base?',
      choices: const [
        Choice('a', 'pyrrole'),
        Choice('b', 'pyridine'),
        Choice('c', 'piperidine'),
        Choice('d', 'aniline'),
      ],
      answer: 'c',
      explanation:
          'Piperidine is a saturated secondary amine, and its lone pair is fully available. Pyridine is weaker because its lone pair is in an sp2 orbital and is held more tightly. Aniline is weaker still in practical terms because its lone pair is delocalised into the ring; pyridine is only a little stronger than aniline, and both are far weaker than piperidine. Pyrrole is the weakest of the four because protonation would break its aromatic sextet.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 10,
      prompt: 'Phenol is a stronger acid than ethanol mainly because',
      choices: const [
        Choice('a', 'the phenyl group donates electrons by the +I effect'),
        Choice('b', 'the phenoxide ion is stabilised by resonance'),
        Choice('c', 'ethanol has the higher molecular mass'),
        Choice('d', 'a longer O–H bond always means a stronger acid'),
      ],
      answer: 'b',
      explanation:
          'When phenol loses a proton, the negative charge is shared with the ortho and para carbons of the ring. Ethoxide keeps the charge on oxygen, with no pi system to share it. The phenyl group is not an electron-donating +I group, and molecular mass does not decide this comparison.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 11,
      figure: benzylCation,
      prompt: 'Why is the drawn benzyl cation more stable than a vinyl cation?',
      choices: const [
        Choice('a', 'The empty p orbital conjugates with the benzene ring'),
        Choice('b', 'The benzyl cation is antiaromatic'),
        Choice('c', 'A vinyl cation has more hyperconjugating alkyl groups'),
        Choice('d', 'The charged carbon in the drawing is sp3'),
      ],
      answer: 'a',
      explanation:
          'The CH2+ carbon of the benzyl cation is sp2, and its empty p orbital overlaps the pi system of the ring, so the charge is delocalised. A vinyl cation keeps its empty orbital in the plane of the double bond, where it cannot overlap the pi bond. The benzyl cation is not antiaromatic, and a vinyl cation has no alkyl hyperconjugation that could outweigh this resonance.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 12,
      prompt: 'Compared with benzoic acid, 4-nitrobenzoic acid is',
      choices: const [
        Choice('a', 'weaker, because the nitro group donates electrons'),
        Choice('b', 'stronger, because the nitro group withdraws electrons from the carboxylate'),
        Choice('c', 'identical in strength, because the groups are far apart'),
        Choice('d', 'not an acid'),
      ],
      answer: 'b',
      explanation:
          'The nitro group withdraws by induction from every position and, from the para position, by resonance as well. Both effects spread and stabilise the negative charge of the benzoate ion. 4-Nitrobenzoic acid is therefore a stronger acid than benzoic acid. Distance weakens an inductive effect, but it does not erase a para resonance effect.',
    ),
  ],
);

final Exercise gocLevel1Exercise3 = Exercise(
  id: _e3,
  title: 'Exercise 3',
  topic: 'Aromaticity and intermediates',
  instruction:
      'Level 1. Only one option is correct. Aromatic sextets, carbenes, and resonance pictures.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      prompt: 'Which species is aromatic?',
      choices: const [
        Choice('a', 'cyclobutadiene'),
        Choice('b', 'benzene'),
        Choice('c', 'cyclooctatetraene'),
        Choice('d', 'the cyclopentadienyl cation'),
      ],
      answer: 'b',
      explanation:
          'Benzene is cyclic, planar, and fully conjugated, and it has six pi electrons, which fits Huckel\'s 4n+2 count for n = 1. Cyclobutadiene has four pi electrons and is antiaromatic in a planar form. Cyclooctatetraene bends into a tub and avoids a planar antiaromatic count, so it is nonaromatic. The cyclopentadienyl cation also has four pi electrons and is antiaromatic.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      figure: cyclopentadienylAnion,
      prompt: 'The drawn cyclopentadienyl anion is aromatic. How many pi electrons does the ring have?',
      choices: const [
        Choice('a', '4'),
        Choice('b', '6'),
        Choice('c', '8'),
        Choice('d', '2'),
      ],
      answer: 'b',
      explanation:
          'Four electrons come from the two double bonds of a Kekule drawing, and the lone pair on the negatively charged carbon occupies a p orbital and contributes two more. The ring is cyclic, planar, and conjugated, with a Huckel sextet. A count of four would be the cyclopentadienyl cation, which is not aromatic.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      prompt: 'A singlet carbene carbon has',
      choices: const [
        Choice('a', 'two unpaired electrons in separate orbitals'),
        Choice('b', 'a lone pair in one orbital and an empty p orbital'),
        Choice('c', 'four unpaired electrons'),
        Choice('d', 'the tetrahedral shape of methane'),
      ],
      answer: 'b',
      explanation:
          'In a singlet carbene the two nonbonding electrons are paired in an sp2-like orbital and the remaining p orbital is empty. The carbon is bent. A triplet carbene has one electron in each of those orbitals, so the unpaired description belongs to the triplet. The carbon is not tetrahedral, because it has only two attached atoms.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      prompt: 'When 2-bromo-2-methylpropane ionises in warm aqueous ethanol, the carbon intermediate is',
      choices: const [
        Choice('a', 'a carbanion'),
        Choice('b', 'a tert-butyl cation'),
        Choice('c', 'a free radical'),
        Choice('d', 'a carbene'),
      ],
      answer: 'b',
      explanation:
          'The tertiary C–Br bond can break before a nucleophile arrives. Bromide leaves with the electron pair, and the tertiary carbon is left with three bonds and an empty p orbital. That species is the tert-butyl cation. Water then bonds to it. The step does not produce a carbanion, a radical, or a carbene.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      prompt: 'Which species has the largest resonance energy?',
      choices: const [
        Choice('a', 'ethene'),
        Choice('b', 'buta-1,3-diene'),
        Choice('c', 'benzene'),
        Choice('d', 'hexa-1,3,5-triene'),
      ],
      answer: 'c',
      explanation:
          'A conjugated polyene is stabilised by a modest amount of delocalisation. Benzene is aromatic. Its heat of hydrogenation is much smaller than three times the value for cyclohexene, and that extra stabilisation is the resonance energy of the ring. Neither ethene nor the open triene has an aromatic sextet.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      figure: acetateResonance,
      prompt: 'In the acetate ion drawn here, the two carbon–oxygen bonds are',
      choices: const [
        Choice('a', 'one permanent double bond and one permanent single bond'),
        Choice('b', 'equivalent, each with bond order 1.5'),
        Choice('c', 'both triple bonds'),
        Choice('d', 'both pure single bonds, with the charge fixed on carbon'),
      ],
      answer: 'b',
      explanation:
          'The two drawings differ only in which oxygen holds the double bond and which holds the negative charge. They contribute equally, so neither oxygen is a distinct double-bond oxygen. Each C–O bond has a bond order of 1.5, and the charge is shared. The charge is not fixed on carbon.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      prompt: 'Electrophilic aromatic substitution is fastest on',
      choices: const [
        Choice('a', 'nitrobenzene'),
        Choice('b', 'benzene'),
        Choice('c', 'toluene'),
        Choice('d', '(trifluoromethyl)benzene'),
      ],
      answer: 'c',
      explanation:
          'The methyl group of toluene donates by induction and by hyperconjugation. It stabilises the cationic intermediate of substitution, so toluene reacts faster than benzene. A nitro group and a trifluoromethyl group both withdraw electrons and slow the attack. Benzene sits between toluene and those deactivated rings.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      prompt: 'The order of the −I effect of the halogens is',
      choices: const [
        Choice('a', 'F > Cl > Br > I'),
        Choice('b', 'I > Br > Cl > F'),
        Choice('c', 'Cl > F > Br > I'),
        Choice('d', 'F > I > Cl > Br'),
      ],
      answer: 'a',
      explanation:
          'This inductive order follows electronegativity. Fluorine is the most electronegative halogen and pulls sigma electron density most strongly. The pull decreases down the group, so chlorine is next, then bromine, then iodine.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 9,
      figure: allylRadical,
      prompt: 'The drawn allyl radical is stabilised mainly by',
      choices: const [
        Choice('a', 'resonance that shares the unpaired electron between the two terminal carbons'),
        Choice('b', 'an aromatic sextet'),
        Choice('c', 'the unpaired electron sitting in an isolated vinyl orbital'),
        Choice('d', 'nine hyperconjugating hydrogens on one carbon'),
      ],
      answer: 'a',
      explanation:
          'A second drawing of the allyl radical places the unpaired electron on the other terminal carbon, with the double bond moved across. The two drawings are equivalent, so the electron is delocalised. The radical is not aromatic, it is not a localised vinyl radical, and it does not have a tert-butyl group.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 10,
      figure: pyrroleAndPyridine,
      prompt: 'Pyrrole is on the left and pyridine is on the right. Pyrrole is a much weaker base because',
      choices: const [
        Choice('a', 'pyrrole contains no nitrogen'),
        Choice('b', 'the nitrogen lone pair of pyrrole is part of the aromatic sextet'),
        Choice('c', 'pyridine is antiaromatic'),
        Choice('d', 'pyrrole is not planar'),
      ],
      answer: 'b',
      explanation:
          'Pyrrole already uses the nitrogen lone pair, in a p orbital, to complete six pi electrons. Protonating that pair would destroy the sextet. Pyridine is aromatic as well, but its lone pair sits in an sp2 orbital in the plane of the ring and is not counted in the sextet, so that pair can bind a proton. Pyrrole is planar, and it does contain nitrogen.',
    ),
  ],
);

final Level gocLevel1 = Level(
  id: 'goc-l1',
  title: 'Level 1',
  exercises: [gocLevel1Exercise1, gocLevel1Exercise2, gocLevel1Exercise3],
);
