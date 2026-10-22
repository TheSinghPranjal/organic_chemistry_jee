import '../../models/content.dart';

const _e1 = 'goc-l3-e1';
const _e2 = 'goc-l3-e2';

const passagePhenolsTitle = 'Substituents on a phenol';

const passagePhenols = '''
When a phenol loses its proton, the charge does not stay only on oxygen. It is shared with the ortho and para carbons of the ring. A substituent changes the acidity by changing how well that anion is stabilised.

A nitro group or a cyano group withdraws electrons. At the para position either group withdraws both by induction through the sigma bonds and by resonance through the pi system, and the phenol becomes a distinctly stronger acid. At the meta position the resonance path is not available, so only induction remains and the increase in acidity is smaller.

A methoxy group at the para position does the opposite. Its oxygen donates a lone pair by resonance, which raises the electron density in the ring and in the phenoxide, so the acid becomes a little weaker than phenol. A methyl group also weakens the acid, but only mildly, through induction and hyperconjugation.

The same pattern appears among benzoic acids. Electron withdrawal stabilises the carboxylate and strengthens the acid, and electron donation does the reverse.
''';

const passageIonTitle = 'Two ways a bond to bromine can break';

const passageIon = '''
2-Bromo-2-methylpropane is a tertiary bromide. In warm aqueous ethanol the C–Br bond can break before any nucleophile arrives. Bromide leaves with the pair of electrons, and the tertiary carbon is left with an empty p orbital. That tert-butyl cation is planar. It is stabilised by the electron release of three methyl groups and by hyperconjugation from nine beta C–H bonds. Water or ethanol can then bond to either face of the empty orbital.

Bromoethane does not follow this path under the same mild conditions. A primary cation would be poorly stabilised, so the nucleophile has to begin bonding while bromide is still leaving.

Allyl bromide is also primary at the carbon that holds bromine, yet it ionises more readily than bromoethane. The cation H2C=CH–CH2+ is stabilised by resonance: the positive charge is shared by the two terminal carbons. A vinyl cation, H2C=CH+, does not receive that stabilisation. Its empty orbital lies in the plane of the double bond and cannot overlap the pi bond.
''';

final Exercise gocLevel3Exercise1 = Exercise(
  id: _e1,
  title: 'Exercise 1',
  topic: 'Two short passages',
  instruction:
      'Level 3. Questions 1 to 4 use the phenol passage. Questions 5 to 8 use the ionisation passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e1,
      number: 1,
      passageTitle: passagePhenolsTitle,
      passage: passagePhenols,
      prompt: 'A para nitro group increases the acidity of phenol mainly because it',
      choices: const [
        Choice('a', 'donates electrons into the ring by resonance'),
        Choice('b', 'stabilises the phenoxide by both induction and resonance'),
        Choice('c', 'turns the O–H bond into a C–H bond'),
        Choice('d', 'removes the aromatic sextet'),
      ],
      answer: 'b',
      explanation:
          'The passage says a para nitro group withdraws by induction and by resonance, and that this stabilises the anion left after the proton leaves. Donation would weaken the acid. The group does not replace the O–H bond or destroy the sextet. Option b is the description given in the passage.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 2,
      passageTitle: passagePhenolsTitle,
      passage: passagePhenols,
      prompt: 'A para methoxy group makes phenol',
      choices: const [
        Choice('a', 'a stronger acid, because methoxy withdraws by resonance'),
        Choice('b', 'a weaker acid, because methoxy donates electron density by resonance'),
        Choice('c', 'identical in acidity to 4-nitrophenol'),
        Choice('d', 'unable to form a conjugate base'),
      ],
      answer: 'b',
      explanation:
          'The passage says the methoxy oxygen donates a lone pair by resonance and raises electron density in the phenoxide, so the acid is a little weaker than phenol. It does not withdraw, it is not as acidic as a nitrophenol, and phenol still has a conjugate base. Option b matches the passage.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 3,
      passageTitle: passagePhenolsTitle,
      passage: passagePhenols,
      prompt: 'Between 3-nitrophenol and 4-nitrophenol, the stronger acid is',
      choices: const [
        Choice('a', '3-nitrophenol, because resonance withdrawal works only from the meta position'),
        Choice('b', '4-nitrophenol, because resonance withdrawal is available from the para position as well as induction'),
        Choice('c', 'neither, because a nitro group donates electrons'),
        Choice('d', 'impossible to decide, because both have the same molecular formula'),
      ],
      answer: 'b',
      explanation:
          'The passage says the meta nitro group can use only induction, while the para nitro group can use induction and resonance. The para acid is therefore stronger. A nitro group withdraws rather than donates, and the same formula does not mean the same acidity when the positions differ.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 4,
      passageTitle: passagePhenolsTitle,
      passage: passagePhenols,
      prompt: 'Which comparison follows the reasoning in the passage?',
      choices: const [
        Choice('a', '4-cyanophenol is more acidic than phenol'),
        Choice('b', '4-aminophenol is more acidic than 4-nitrophenol'),
        Choice('c', '4-methylphenol is more acidic than 4-nitrophenol'),
        Choice('d', 'ethanol is more acidic than phenol'),
      ],
      answer: 'a',
      explanation:
          'The passage puts a para cyano group with a para nitro group: both withdraw by induction and by resonance, so 4-cyanophenol is more acidic than phenol. An amino group and a methyl group donate, so they would weaken a phenol relative to a nitrophenol. Ethanol has no resonance-stabilised phenoxide, and the passage\'s whole point is that this delocalisation makes phenols more acidic than alcohols.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 5,
      passageTitle: passageIonTitle,
      passage: passageIon,
      prompt: 'The intermediate formed when 2-bromo-2-methylpropane ionises is',
      choices: const [
        Choice('a', 'a carbanion'),
        Choice('b', 'the tert-butyl cation'),
        Choice('c', 'a bromine radical'),
        Choice('d', 'a carbene'),
      ],
      answer: 'b',
      explanation:
          'The passage says bromide leaves with the electron pair and the tertiary carbon is left with an empty p orbital. That species is the tert-butyl cation. Losing the pair with the leaving group is not the path to a carbanion, a radical, or a carbene.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 6,
      passageTitle: passageIonTitle,
      passage: passageIon,
      prompt: 'That cation is stabilised mainly by',
      choices: const [
        Choice('a', 'resonance with a benzene ring'),
        Choice('b', 'induction and hyperconjugation from three methyl groups'),
        Choice('c', 'an aromatic sextet'),
        Choice('d', 'an empty sp3 orbital'),
      ],
      answer: 'b',
      explanation:
          'The passage names the electron release of three methyl groups and hyperconjugation from nine beta C–H bonds. There is no benzene ring and no aromatic sextet. The empty orbital is a p orbital on an sp2 carbon, not an empty sp3 orbital.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 7,
      passageTitle: passageIonTitle,
      passage: passageIon,
      prompt: 'Allyl bromide ionises more readily than bromoethane because',
      choices: const [
        Choice('a', 'the allyl cation is stabilised by resonance'),
        Choice('b', 'bromide is a poorer leaving group on an allyl carbon'),
        Choice('c', 'allyl bromide is tertiary'),
        Choice('d', 'the allyl cation is antiaromatic'),
      ],
      answer: 'a',
      explanation:
          'The passage says allyl bromide is primary, like the carbon of bromoethane, but the allyl cation shares its charge between the two terminal carbons. That resonance is the reason ionisation is easier. Bromide is not a poorer leaving group here, the substrate is not tertiary, and the allyl cation is not antiaromatic.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 8,
      passageTitle: passageIonTitle,
      passage: passageIon,
      prompt: 'Once the tert-butyl cation has formed, water',
      choices: const [
        Choice('a', 'can bond to either face of the planar cation'),
        Choice('b', 'can approach only from the side opposite a bromine atom that is still attached'),
        Choice('c', 'must convert the cation into a radical before any new bond forms'),
        Choice('d', 'has no lone pair that could form a bond'),
      ],
      answer: 'a',
      explanation:
          'The passage says the cation is planar and that water or ethanol can bond to either face of the empty orbital. The bromide has already left, so there is no attached bromine to block one side. Water does not need to make a radical first, and the oxygen of water does have lone pairs.',
    ),
  ],
);

final Exercise gocLevel3Exercise2 = Exercise(
  id: _e2,
  title: 'Exercise 2',
  topic: 'Integer answers',
  instruction: 'Level 3. The answer is a non-negative integer. Type it, then check.',
  questions: [
    _integer(
      1,
      'How many beta hydrogen atoms can hyperconjugate with the empty p orbital of the tert-butyl cation, (CH3)3C+?',
      9,
      'Each of the three methyl groups has three C–H bonds, and all nine can align with the empty p orbital. The central carbon carries no hydrogen of its own, so there is no tenth beta hydrogen.',
    ),
    _integer(
      2,
      'How many pi electrons are there in benzene?',
      6,
      'Each of the six carbons contributes one electron from its p orbital. The three double bonds of a Kekule drawing are a picture of those same six electrons. The count fits Huckel\'s rule, 4n+2 with n = 1.',
    ),
    _integer(
      3,
      'How many equivalent resonance structures are usually drawn for the carbonate ion, CO3 2−?',
      3,
      'The carbon is attached to three oxygens. Any one of them can hold the double bond, with the other two carrying the negative charge as single-bonded oxygens. Those three drawings are equivalent. The real ion averages them, so each C–O bond order is 4/3.',
    ),
    _integer(
      4,
      'How many sp2 hybridised carbon atoms are there in toluene?',
      6,
      'The six ring carbons are each trigonal and sp2. The methyl carbon is tetrahedral and sp3. The side chain does not add another sp2 carbon.',
    ),
    _integer(
      5,
      'How many pi electrons does pyrrole use in its aromatic sextet?',
      6,
      'The two double bonds contribute four electrons. The nitrogen lone pair occupies a p orbital and contributes the other two. The N–H bond lies in the plane of the ring and is not part of the pi count.',
    ),
    _integer(
      6,
      'In a planar conformation of buta-1,3-diene, how many atoms lie in that one plane? Count every carbon and every hydrogen.',
      10,
      'The molecular formula is C4H6. Planarity lets the p orbitals overlap, so all four carbons lie in one plane, and the six hydrogens attached to them lie in that same plane. The total is ten atoms.',
    ),
    _integer(
      7,
      'How many of these species are aromatic: benzene, the cyclopentadienyl anion, the cycloheptatrienyl cation, cyclobutadiene, pyridine, and pyrrole?',
      5,
      'Benzene, the cyclopentadienyl anion, the cycloheptatrienyl cation, pyridine, and pyrrole are each cyclic, planar, and conjugated, with six pi electrons. Cyclobutadiene has four pi electrons. A planar form of it is antiaromatic, so it is not counted. The aromatic total is five.',
    ),
    _integer(
      8,
      'How many alpha hydrogen atoms in propene can hyperconjugate with the double bond?',
      3,
      'Propene is CH3–CH=CH2. Only the methyl group is attached to a doubly bonded carbon, and that methyl group has three hydrogens. The hydrogens on the double-bond carbons are vinylic. They are not the alpha hydrogens of hyperconjugation.',
    ),
  ],
);

Question _integer(int number, String prompt, int answer, String explanation) {
  return Question(
    id: '$_e2-q$number',
    number: number,
    kind: QuestionKind.integer,
    prompt: prompt,
    answer: '$answer',
    explanation: explanation,
  );
}

final Level gocLevel3 = Level(
  id: 'goc-l3',
  title: 'Level 3',
  exercises: [gocLevel3Exercise1, gocLevel3Exercise2],
);
