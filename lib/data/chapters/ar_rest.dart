import '../../models/content.dart';

const _e2 = 'ar-e2-m';
const _e3 = 'ar-e3-p';
const _e4 = 'ar-e4-x';
const _e5 = 'ar-e5-n';

final Exercise arExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Aromaticity, directors, and side chains',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which species are aromatic?',
      choices: const [
        Choice('a', 'Benzene'),
        Choice('b', 'The cyclopentadienyl anion'),
        Choice('c', 'The cycloheptatrienyl cation'),
        Choice('d', 'Cyclobutadiene'),
      ],
      answer: 'a,b,c',
      explanation:
          'Benzene has six π electrons in a planar conjugated ring. The cyclopentadienyl anion also has six, counting the lone pair, and the cycloheptatrienyl cation has six as well, with an empty p orbital completing the circle. All three are aromatic. Cyclobutadiene has four π electrons and is antiaromatic.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which species are antiaromatic if they are held planar?',
      choices: const [
        Choice('a', 'Cyclobutadiene'),
        Choice('b', 'The cyclopentadienyl cation'),
        Choice('c', 'Benzene'),
        Choice('d', 'Planar cyclooctatetraene'),
      ],
      answer: 'a,b,d',
      explanation:
          'A planar, conjugated ring with 4n π electrons is antiaromatic. Cyclobutadiene has four, the cyclopentadienyl cation has four, and a planar cyclooctatetraene would have eight. Benzene has six, which is 4n+2, so it is aromatic rather than antiaromatic. Real cyclooctatetraene escapes the antiaromatic count by folding out of plane.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which substituents direct an incoming electrophile to the meta position?',
      choices: const [
        Choice('a', 'NO2'),
        Choice('b', 'COOH'),
        Choice('c', 'CHO'),
        Choice('d', 'Cl'),
      ],
      answer: 'a,b,c',
      explanation:
          'Nitro, carboxyl, and aldehyde groups withdraw electron density and leave the meta position as the least deactivated site. All three are meta directors. Chlorine also withdraws inductively, but its lone pairs stabilise the ortho and para sigma complexes, so chlorine directs ortho and para.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which substituents direct an incoming electrophile ortho and para?',
      choices: const [
        Choice('a', 'CH3'),
        Choice('b', 'OH'),
        Choice('c', 'Cl'),
        Choice('d', 'NO2'),
      ],
      answer: 'a,b,c',
      explanation:
          'A methyl group donates and directs ortho–para. A hydroxy group donates strongly by resonance and does the same. Chlorine deactivates the ring but still directs ortho–para through its lone pairs. A nitro group withdraws and directs meta, so it does not belong in this set.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which statements about Friedel–Crafts alkylation of benzene are correct?',
      choices: const [
        Choice('a', 'A primary alkyl chloride can rearrange before the ring is attacked'),
        Choice('b', 'More than one alkyl group can enter, because the first one activates the ring'),
        Choice('c', 'Nitrobenzene fails to alkylate under the usual conditions'),
        Choice('d', 'The alkyl group deactivates the ring, so the reaction stops after one substitution'),
      ],
      answer: 'a,b,c',
      explanation:
          'A primary carbocation rearranges to a more stable one, so the group that ends on the ring may not match the chloride. The alkyl substituent that does enter donates electrons and invites a second substitution. A nitro group withdraws so strongly that the ring never attacks the electrophile. The last statement has the activating effect backwards.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which compounds give benzoic acid with hot alkaline potassium permanganate, followed by acid?',
      choices: const [
        Choice('a', 'Toluene'),
        Choice('b', 'Ethylbenzene'),
        Choice('c', 'tert-Butylbenzene'),
        Choice('d', 'Propylbenzene'),
      ],
      answer: 'a,b,d',
      explanation:
          'The side chain is oxidised away as long as the benzylic carbon still has a hydrogen. Toluene, ethylbenzene, and propylbenzene all qualify, and each leaves benzoic acid. tert-Butylbenzene has no benzylic hydrogen, so this oxidation does not produce benzoic acid from it.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which reactions produce benzene?',
      choices: const [
        Choice('a', 'Phenol distilled with zinc dust'),
        Choice('b', 'Sodium benzoate heated with soda-lime'),
        Choice('c', 'Ethyne passed through a red-hot iron tube'),
        Choice('d', 'Toluene stirred with cold dilute potassium permanganate'),
      ],
      answer: 'a,b,c',
      explanation:
          'Zinc dust strips the oxygen from phenol. Soda-lime removes the carboxyl group of sodium benzoate. Three molecules of ethyne cyclise on hot iron to benzene. Cold dilute permanganate does not turn toluene into benzene; vigorous oxidation of toluene gives benzoic acid instead.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements are correct?',
      choices: const [
        Choice('a', 'Birch reduction of benzene gives cyclohexa-1,4-diene'),
        Choice('b', 'Birch reduction of toluene places the methyl group on a saturated carbon'),
        Choice('c', 'Toluene with bromine and light gives (bromomethyl)benzene'),
        Choice('d', 'Toluene with bromine and iron(III) bromide gives (bromomethyl)benzene'),
      ],
      answer: 'a,c',
      explanation:
          'Sodium in liquid ammonia reduces benzene to the non-conjugated diene, cyclohexa-1,4-diene. The methyl group of toluene is electron-donating, so it stays on a double bond, not on a saturated carbon. Light and bromine substitute the benzylic hydrogen. Iron(III) bromide sends the bromine onto the ring, at the ortho and para positions, rather than onto the methyl group.',
    ),
  ],
);

const _passageRingsTitle = 'Four carbon rings';

const _passageRings = '''
Four samples are on the bench.

Sample A is benzene.
Sample B is cyclobutadiene.
Sample C is the cyclopentadienyl anion.
Sample D is cyclooctatetraene in its usual tub shape.

Each question refers to these samples.
''';

const _passageTolueneTitle = 'Four treatments of toluene';

const _passageToluene = '''
Toluene is divided among four flasks.

Flask E is treated with bromine and iron(III) bromide, in the dark.
Flask F is treated with bromine and light, with no Lewis acid.
Flask G is heated with alkaline potassium permanganate, and the mixture is then acidified.
Flask H is treated with ethanoyl chloride and aluminium chloride.
''';

final Exercise arExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Four rings, then four treatments of toluene',
  instruction:
      'Questions 1 to 4 use the four-rings passage. Questions 5 to 8 use the toluene passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageRingsTitle,
      passage: _passageRings,
      prompt: 'Which sample is antiaromatic?',
      choices: const [
        Choice('a', 'Sample A'),
        Choice('b', 'Sample B'),
        Choice('c', 'Sample C'),
        Choice('d', 'Sample D'),
      ],
      answer: 'b',
      explanation:
          'Cyclobutadiene is a planar conjugated ring with four π electrons, a 4n count, so it is antiaromatic. Benzene and the cyclopentadienyl anion each have six π electrons and are aromatic. Tub-shaped cyclooctatetraene is not planar, so it is nonaromatic rather than antiaromatic.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageRingsTitle,
      passage: _passageRings,
      prompt: 'Which sample is aromatic and carries a negative charge?',
      choices: const [
        Choice('a', 'Sample A'),
        Choice('b', 'Sample B'),
        Choice('c', 'Sample C'),
        Choice('d', 'Sample D'),
      ],
      answer: 'c',
      explanation:
          'The cyclopentadienyl anion has six π electrons once the lone pair is included, and the ring is planar and conjugated. It is the aromatic anion. Benzene is aromatic but neutral. Cyclobutadiene and tub-shaped cyclooctatetraene are not aromatic.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageRingsTitle,
      passage: _passageRings,
      prompt: 'Which sample is nonaromatic because the ring is not planar?',
      choices: const [
        Choice('a', 'Sample A'),
        Choice('b', 'Sample B'),
        Choice('c', 'Sample C'),
        Choice('d', 'Sample D'),
      ],
      answer: 'd',
      explanation:
          'Cyclooctatetraene would be antiaromatic if it were flat, because it would have eight π electrons. It folds into a tub instead, the p orbitals no longer form one loop, and the molecule is nonaromatic. Benzene and the cyclopentadienyl anion are planar and aromatic. Cyclobutadiene is planar and antiaromatic.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageRingsTitle,
      passage: _passageRings,
      prompt: 'Which sample is nitrated by mixed acid to a mononitro product that is still aromatic?',
      choices: const [
        Choice('a', 'Sample A'),
        Choice('b', 'Sample B'),
        Choice('c', 'Sample C'),
        Choice('d', 'Sample D'),
      ],
      answer: 'a',
      explanation:
          'Benzene undergoes electrophilic nitration, and loss of a proton returns the ring to a six-π-electron aromatic system. The product is nitrobenzene. Cyclobutadiene is not a stable substrate for that reaction, the cyclopentadienyl anion is not nitrated in this way to a neutral nitro arene, and tub-shaped cyclooctatetraene behaves more like a polyene.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageTolueneTitle,
      passage: _passageToluene,
      prompt: 'The major products in flask E are',
      choices: const [
        Choice('a', '2-bromotoluene and 4-bromotoluene'),
        Choice('b', '(bromomethyl)benzene'),
        Choice('c', 'benzoic acid'),
        Choice('d', '4-methylacetophenone'),
      ],
      answer: 'a',
      explanation:
          'Iron(III) bromide makes bromine electrophilic, and the methyl group directs that electrophile ortho and para. Flask E therefore gives 2-bromotoluene and 4-bromotoluene. The side-chain bromide is the product of the light-promoted reaction in flask F.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageTolueneTitle,
      passage: _passageToluene,
      prompt: 'The organic product in flask F is',
      choices: const [
        Choice('a', '4-bromotoluene'),
        Choice('b', '(bromomethyl)benzene'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'acetophenone'),
      ],
      answer: 'b',
      explanation:
          'Light generates bromine atoms, which abstract a benzylic hydrogen. The benzyl radical then takes bromine from Br2. Flask F gives (bromomethyl)benzene. Without the Lewis acid the ring is not the site of substitution.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageTolueneTitle,
      passage: _passageToluene,
      prompt: 'The organic product in flask G, after the acid is added, is',
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', 'benzyl alcohol'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'benzene'),
      ],
      answer: 'c',
      explanation:
          'Hot alkaline permanganate oxidises a side chain that has a benzylic hydrogen. The methyl group of toluene is converted into a carboxylate, and acidification gives benzoic acid. The reaction does not stop at the aldehyde or the alcohol, and it does not remove the carbon to leave benzene.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageTolueneTitle,
      passage: _passageToluene,
      prompt: 'In which flask does an acetyl group enter ortho and para to the methyl group?',
      choices: const [
        Choice('a', 'Flask E'),
        Choice('b', 'Flask F'),
        Choice('c', 'Flask G'),
        Choice('d', 'Flask H'),
      ],
      answer: 'd',
      explanation:
          'Ethanoyl chloride and aluminium chloride generate the acylium ion. The methyl group of toluene directs that ion ortho and para, so flask H gives methyl acetophenones, including 4-methylacetophenone. The other flasks halogenate or oxidise toluene and do not introduce an acyl group.',
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

final Exercise arExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Reagents, directors, and preparations',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each reagent pair with the product from benzene.',
      const [
        MatchEntry('A', 'Concentrated nitric and sulfuric acids'),
        MatchEntry('B', 'Sulfur trioxide in sulfuric acid'),
        MatchEntry('C', 'Ethanoyl chloride and aluminium chloride'),
        MatchEntry('D', '1-Chloropropane and aluminium chloride'),
      ],
      const [
        MatchEntry('P', 'Nitrobenzene'),
        MatchEntry('Q', 'Benzenesulfonic acid'),
        MatchEntry('R', 'Acetophenone'),
        MatchEntry('S', '(Propan-2-yl)benzene'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Mixed acid nitrates the ring. Sulfur trioxide sulphonates it. Ethanoyl chloride acylates it to acetophenone, and the acyl group does not rearrange. 1-Chloropropane rearranges, so the alkylation product is the branched (propan-2-yl)benzene.',
    ),
    _matrix(
      2,
      'Match each substituent with every description that fits it.',
      const [
        MatchEntry('A', 'OH'),
        MatchEntry('B', 'NO2'),
        MatchEntry('C', 'Cl'),
        MatchEntry('D', 'CH3'),
      ],
      const [
        MatchEntry('P', 'Activates the ring'),
        MatchEntry('Q', 'Deactivates the ring'),
        MatchEntry('R', 'Directs ortho and para'),
        MatchEntry('S', 'Directs meta'),
      ],
      'A-PR,B-QS,C-QR,D-PR',
      'Hydroxy and methyl groups donate electrons, so they activate the ring and direct ortho–para. A nitro group withdraws electrons, deactivates the ring, and directs meta. Chlorine withdraws by induction, so the ring is deactivated, but its lone pairs still direct ortho and para.',
    ),
    _matrix(
      3,
      'Match each treatment of toluene with the organic product.',
      const [
        MatchEntry('A', 'Bromine and iron(III) bromide'),
        MatchEntry('B', 'Bromine and light'),
        MatchEntry('C', 'Hot alkaline permanganate, then acid'),
        MatchEntry('D', 'Sodium, liquid ammonia, and ethanol'),
      ],
      const [
        MatchEntry('P', '2-Bromotoluene and 4-bromotoluene'),
        MatchEntry('Q', '(Bromomethyl)benzene'),
        MatchEntry('R', 'Benzoic acid'),
        MatchEntry('S', '1-Methylcyclohexa-1,4-diene'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The Lewis acid sends bromine to the ortho and para positions of the ring. Light sends bromine to the methyl carbon. Hot permanganate oxidises that methyl group to the carboxylic acid. Sodium in ammonia reduces the ring to a 1,4-diene and leaves the methyl group on a double bond.',
    ),
    _matrix(
      4,
      'Match each species with its classification.',
      const [
        MatchEntry('A', 'Benzene'),
        MatchEntry('B', 'Cyclobutadiene'),
        MatchEntry('C', 'The cyclopentadienyl anion'),
        MatchEntry('D', 'The cycloheptatrienyl cation'),
      ],
      const [
        MatchEntry('P', 'Aromatic, with six π electrons'),
        MatchEntry('Q', 'Antiaromatic, with four π electrons'),
        MatchEntry('R', 'Aromatic, with two π electrons'),
        MatchEntry('S', 'Nonaromatic, because it is not planar'),
      ],
      'A-P,B-Q,C-P,D-P',
      'Benzene, the cyclopentadienyl anion, and the cycloheptatrienyl cation each have a planar conjugated loop of six π electrons. Cyclobutadiene has four and is antiaromatic. The two-electron aromatic ion is the cyclopropenyl cation, which is not in this list, and none of these four folds out of planarity.',
    ),
    _matrix(
      5,
      'Match each experiment with the organic product.',
      const [
        MatchEntry('A', 'Phenol distilled with zinc dust'),
        MatchEntry('B', 'Ethylbenzene heated with alkaline permanganate, then acidified'),
        MatchEntry('C', 'Nitrobenzene heated with tin and hydrochloric acid'),
        MatchEntry('D', 'Benzene with 2-chloropropane and aluminium chloride'),
      ],
      const [
        MatchEntry('P', 'Benzene'),
        MatchEntry('Q', 'Benzoic acid'),
        MatchEntry('R', 'Aniline'),
        MatchEntry('S', '(Propan-2-yl)benzene'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Zinc dust removes the hydroxy group of phenol and leaves benzene. The ethyl side chain has a benzylic hydrogen and is oxidised to benzoic acid. Tin and acid reduce the nitro group to aniline. 2-Chloropropane alkylates benzene directly to (propan-2-yl)benzene, with no need for a rearrangement.',
    ),
  ],
);

final Exercise arExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of electrons, directors, and products',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many of these are aromatic? Benzene, the cyclopentadienyl anion, cyclobutadiene, the cycloheptatrienyl cation, pyridine.',
      answer: '4',
      explanation:
          'Benzene, the cyclopentadienyl anion, and the cycloheptatrienyl cation each have six π electrons in a planar conjugated ring. Pyridine also has six π electrons; its nitrogen lone pair is not part of that count, but the ring is still aromatic. Cyclobutadiene has four π electrons and is antiaromatic. Four of the five are aromatic.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt: 'How many π electrons are in the aromatic cyclopentadienyl anion?',
      answer: '6',
      explanation:
          'Two double bonds contribute four π electrons and the carbanion contributes a lone pair. The total is 6, which is a 4n+2 count. That is why the anion is aromatic.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt: 'How many of these groups direct meta? NO2, COOH, CH3, Cl, CHO.',
      answer: '3',
      explanation:
          'Nitro, carboxyl, and formyl groups withdraw electron density and direct meta. A methyl group directs ortho and para. Chlorine deactivates the ring but also directs ortho and para. Three of the five are meta directors.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give benzoic acid with hot alkaline potassium permanganate? Toluene, ethylbenzene, tert-butylbenzene, (propan-2-yl)benzene.',
      answer: '3',
      explanation:
          'Toluene, ethylbenzene, and (propan-2-yl)benzene each have a benzylic hydrogen, so the side chain is oxidised to the carboxylic acid. tert-Butylbenzene has no benzylic hydrogen and does not give benzoic acid. The count is 3.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          'How many of these produce benzene? Phenol distilled with zinc dust; sodium benzoate heated with soda-lime; ethyne passed through a red-hot iron tube; toluene treated with bromine and iron(III) bromide.',
      answer: '3',
      explanation:
          'Zinc dust converts phenol into benzene, soda-lime decarboxylates sodium benzoate to benzene, and three molecules of ethyne cyclise to benzene. Bromine with iron(III) bromide substitutes the ring of toluene and gives bromotoluenes, not benzene. Three of the four produce benzene.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt: 'How many carbon–carbon double bonds are in the product of the Birch reduction of benzene?',
      answer: '2',
      explanation:
          'Sodium in liquid ammonia reduces benzene to cyclohexa-1,4-diene. Two double bonds remain, and they are not conjugated. The product is not cyclohexene and it is not fully saturated. The number of carbon–carbon double bonds is 2.',
    ),
  ],
);
