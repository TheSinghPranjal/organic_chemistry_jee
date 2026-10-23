import '../../models/content.dart';

const _e2 = 'co-e2-m';
const _e3 = 'co-e3-p';
const _e4 = 'co-e4-x';
const _e5 = 'co-e5-n';

final Exercise coExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Preparations, tests, and reductions',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which preparations give benzaldehyde?',
      choices: const [
        Choice('a', 'Toluene with chromyl chloride, then water'),
        Choice('b', 'Toluene with hot acidic potassium permanganate'),
        Choice('c', 'Benzoyl chloride with hydrogen over palladium on barium sulfate'),
        Choice('d', 'Benzene with ethanoyl chloride and aluminium chloride'),
      ],
      answer: 'a,c',
      explanation:
          'Chromyl chloride followed by water is the Etard oxidation and stops the methyl group of toluene at the aldehyde. Hydrogenation of benzoyl chloride over the poisoned palladium catalyst is the Rosenmund reduction and also stops at benzaldehyde. Hot permanganate takes toluene all the way to benzoic acid. Ethanoyl chloride acylates benzene and the product is 1-phenylethanone, a ketone.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which compounds can undergo an aldol reaction with dilute base?',
      choices: const [
        Choice('a', 'Ethanal'),
        Choice('b', 'Propanone'),
        Choice('c', 'Benzaldehyde'),
        Choice('d', 'Methanal'),
      ],
      answer: 'a,b',
      explanation:
          'An aldol reaction needs an α-hydrogen that base can remove. Ethanal and propanone both have that hydrogen, so each can form an enolate and add to another carbonyl. Benzaldehyde and methanal have no hydrogen on the neighbouring carbon. In concentrated base they disproportionate instead of condensing with themselves.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which compounds undergo the Cannizzaro reaction with concentrated sodium hydroxide?',
      choices: const [
        Choice('a', 'Benzaldehyde'),
        Choice('b', 'Methanal'),
        Choice('c', 'Ethanal'),
        Choice('d', '2,2-Dimethylpropanal'),
      ],
      answer: 'a,b,d',
      explanation:
          'The Cannizzaro reaction is the path taken by an aldehyde that cannot form an enolate. Benzaldehyde, methanal, and 2,2-dimethylpropanal all have no α-hydrogen, so concentrated hydroxide moves a hydride from one molecule to another. Ethanal has three α-hydrogens and undergoes the aldol reaction under these conditions instead.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which compounds give a silver mirror with Tollens reagent?',
      choices: const [
        Choice('a', 'Ethanal'),
        Choice('b', 'Benzaldehyde'),
        Choice('c', 'Propanone'),
        Choice('d', '1-Phenylethanone'),
      ],
      answer: 'a,b',
      explanation:
          'Tollens reagent oxidises aldehydes, both aliphatic and aromatic. Ethanal and benzaldehyde each give a carboxylate and a silver mirror. Propanone and 1-phenylethanone are ketones. They do not have an aldehydic hydrogen, so they leave the reagent unchanged. 1-Phenylethanone does give iodoform, but that is a different test.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which reagents convert 1-phenylethanone into ethylbenzene?',
      choices: const [
        Choice('a', 'Zinc amalgam and concentrated hydrochloric acid'),
        Choice('b', 'Hydrazine, then potassium hydroxide and heat'),
        Choice('c', 'Sodium borohydride in ethanol'),
        Choice('d', 'Lithium aluminium hydride, then water'),
      ],
      answer: 'a,b',
      explanation:
          'Both the Clemmensen method and the Wolff–Kishner method replace a ketone carbonyl by CH2. The first uses acidic zinc amalgam and the second uses a hydrazone and hot base, but the hydrocarbon is ethylbenzene in both cases. The two hydride reagents stop at 1-phenylethanol. They do not remove the oxygen completely.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which statements about nucleophilic addition to a carbonyl group are correct?',
      choices: const [
        Choice('a', 'Methanal reacts faster with hydrogen cyanide than propanone does'),
        Choice('b', 'A para nitro group makes benzaldehyde more reactive toward hydrogen cyanide'),
        Choice('c', 'A para methoxy group makes benzaldehyde more reactive toward hydrogen cyanide'),
        Choice('d', 'A ketone is usually slower than an aldehyde because the carbonyl carbon is more crowded'),
      ],
      answer: 'a,b,d',
      explanation:
          'Methanal is less crowded and less electron-rich at carbon than propanone, so cyanide adds faster. A para nitro group withdraws electrons and speeds the addition to benzaldehyde, while a para methoxy group donates electrons and slows it. The two alkyl groups of a ketone hinder the incoming nucleophile and also reduce the positive character of the carbon, so an aldehyde is usually the more reactive partner.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which compounds give a yellow precipitate with iodine and aqueous sodium hydroxide?',
      choices: const [
        Choice('a', 'Propanone'),
        Choice('b', '1-Phenylethanone'),
        Choice('c', 'Pentan-3-one'),
        Choice('d', 'Ethanal'),
      ],
      answer: 'a,b,d',
      explanation:
          'Iodoform forms from a methyl ketone and also from ethanal, which is the one aldehyde that carries a CH3CO fragment. Propanone, 1-phenylethanone, and ethanal all qualify. Pentan-3-one is a ketone, but both groups beside the carbonyl are ethyl groups, so there is no methyl ketone and no yellow precipitate.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements are correct?',
      choices: const [
        Choice('a', 'Ph3P=CH2 converts cyclohexanone into methylenecyclohexane'),
        Choice('b', 'A peracid converts cyclohexanone into the seven-membered lactone oxepan-2-one'),
        Choice('c', 'In the peracid oxidation of 1-phenylethanone, the methyl group migrates ahead of the phenyl group'),
        Choice('d', 'Clemmensen reduction and the Wolff–Kishner reduction both replace C=O by CH2'),
      ],
      answer: 'a,b,d',
      explanation:
          'The methylene ylide swaps the carbonyl oxygen of cyclohexanone for a CH2 group and leaves a double bond, which is methylenecyclohexane. A peracid inserts oxygen into the ring of cyclohexanone and the product is the lactone oxepan-2-one. In 1-phenylethanone the phenyl group migrates ahead of the methyl group, so the claim that methyl migrates first is wrong. Both named reductions of a ketone replace the carbonyl by CH2.',
    ),
  ],
);

const _passageBottlesTitle = 'Four carbonyl bottles';

const _passageBottles = '''
Four bottles are labelled only with a letter.

Bottle A is ethanal.
Bottle B is benzaldehyde.
Bottle C is propanone.
Bottle D is pentan-3-one.

Each test is run on a fresh sample. The bottles are not mixed.
''';

const _passageRoutesTitle = 'Two routes to one aldehyde';

const _passageRoutes = '''
Flask E holds the product obtained when toluene is treated with chromyl chloride and the complex is hydrolysed. Flask F holds the product obtained when benzoyl chloride is hydrogenated over palladium on barium sulfate. The two flasks contain the same aromatic aldehyde.

That aldehyde is then divided. Portion G is warmed with concentrated sodium hydroxide. Portion H is heated with an excess of propanone and dilute sodium hydroxide.
''';

final Exercise coExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Four carbonyl bottles, then two routes to benzaldehyde',
  instruction:
      'Questions 1 to 4 use the four-bottles passage. Questions 5 to 8 use the two-routes passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives a red precipitate with Fehling solution?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Fehling solution oxidises an aliphatic aldehyde and deposits red copper(I) oxide. Bottle A is ethanal. Bottle B is an aromatic aldehyde and does not reduce this reagent. Bottles C and D are ketones, so they give no red solid either.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives a silver mirror with Tollens reagent and no red solid with Fehling solution?',
      choices: const [
        Choice('a', 'Bottle B'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Benzaldehyde is oxidised by Tollens reagent, so bottle B gives the silver mirror. The same aromatic aldehyde is not oxidised by Fehling solution. Bottle A gives both results. The two ketones give neither.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives iodoform and does not give a silver mirror?',
      choices: const [
        Choice('a', 'Bottle C'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Propanone is a methyl ketone, so iodine and base produce iodoform, and a ketone does not reduce Tollens reagent. Bottle A also gives iodoform, but it is an aldehyde and does give the mirror. Bottle B gives the mirror and not iodoform. Bottle D is not a methyl ketone and gives neither result.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle can undergo an aldol reaction but not the iodoform reaction?',
      choices: const [
        Choice('a', 'Bottle D'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle C'),
      ],
      answer: 'a',
      explanation:
          'Pentan-3-one has α-hydrogens on both methylene groups, so dilute base can generate an enolate and an aldol product. It is not a methyl ketone, so it does not give iodoform. Ethanal and propanone do both reactions. Benzaldehyde has no α-hydrogen, so it does neither.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageRoutesTitle,
      passage: _passageRoutes,
      prompt: 'The preparation in flask E is',
      choices: const [
        Choice('a', 'the Etard oxidation'),
        Choice('b', 'the Rosenmund reduction'),
        Choice('c', 'the Wolff–Kishner reduction'),
        Choice('d', 'a Friedel–Crafts acylation'),
      ],
      answer: 'a',
      explanation:
          'Chromyl chloride followed by hydrolysis oxidises the methyl group of toluene to an aldehyde. That sequence is the Etard oxidation. Flask F, not flask E, is the hydrogenation of an acyl chloride. Neither flask is a reduction of a ketone hydrazone, and neither puts an acetyl group on the ring.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageRoutesTitle,
      passage: _passageRoutes,
      prompt: 'The preparation in flask F is',
      choices: const [
        Choice('a', 'the Rosenmund reduction'),
        Choice('b', 'the Etard oxidation'),
        Choice('c', 'the Clemmensen reduction'),
        Choice('d', 'the Cannizzaro reaction'),
      ],
      answer: 'a',
      explanation:
          'Benzoyl chloride and hydrogen over palladium on barium sulfate stop at benzaldehyde. That is the Rosenmund reduction. The Etard oxidation is the chromyl chloride route in flask E. Zinc amalgam would reduce a ketone, and concentrated base would disproportionate an aldehyde that is already formed.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageRoutesTitle,
      passage: _passageRoutes,
      prompt: 'The organic products in portion G are',
      choices: const [
        Choice('a', 'phenylmethanol and sodium benzoate'),
        Choice('b', '3-phenylprop-2-enal'),
        Choice('c', '4-phenylbut-3-en-2-one'),
        Choice('d', 'ethylbenzene'),
      ],
      answer: 'a',
      explanation:
          'The shared product is benzaldehyde, which has no α-hydrogen. Concentrated hydroxide therefore causes a Cannizzaro reaction. One molecule is reduced to phenylmethanol and the other is oxidised to sodium benzoate. The unsaturated aldehyde and the enone belong to condensations with another carbonyl compound. Portion H is the one that uses propanone.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageRoutesTitle,
      passage: _passageRoutes,
      prompt: 'The major product in portion H is',
      choices: const [
        Choice('a', '4-phenylbut-3-en-2-one'),
        Choice('b', '3-phenylprop-2-enoic acid'),
        Choice('c', 'phenylmethanol'),
        Choice('d', '1,5-diphenylpenta-1,4-dien-3-one, because the ketone is in excess'),
      ],
      answer: 'a',
      explanation:
          'The enolate of propanone adds to benzaldehyde, and the adduct loses water. With propanone in excess, only one side of the ketone condenses. The product is 4-phenylbut-3-en-2-one. The unsaturated acid would have required an acid anhydride. The diaryl dienone forms when benzaldehyde is the component in excess. Portion G is the one that produces the alcohol.',
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

final Exercise coExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Preparations, tests, and named reactions',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each preparation with the organic product.',
      const [
        MatchEntry('A', 'Toluene, chromyl chloride, then water'),
        MatchEntry('B', 'Benzene, ethanoyl chloride, and aluminium chloride'),
        MatchEntry('C', 'Benzoyl chloride, hydrogen, and palladium on barium sulfate'),
        MatchEntry('D', 'Cyclohexanol and pyridinium chlorochromate'),
      ],
      const [
        MatchEntry('P', 'Benzaldehyde'),
        MatchEntry('Q', '1-Phenylethanone'),
        MatchEntry('R', 'Cyclohexanone'),
        MatchEntry('S', 'Benzoic acid'),
      ],
      'A-P,B-Q,C-P,D-R',
      'Chromyl chloride oxidises the methyl group of toluene to the aldehyde, and the Rosenmund hydrogenation of benzoyl chloride stops at the same aldehyde, so A and C are P. Ethanoyl chloride acylates benzene to the methyl ketone, so B is Q. Pyridinium chlorochromate oxidises the secondary alcohol to the ketone, so D is R. None of these conditions burns the side chain down to benzoic acid.',
    ),
    _matrix(
      2,
      'Match each compound with every observation that fits it.',
      const [
        MatchEntry('A', 'Ethanal'),
        MatchEntry('B', 'Benzaldehyde'),
        MatchEntry('C', 'Propanone'),
        MatchEntry('D', 'Pentan-3-one'),
      ],
      const [
        MatchEntry('P', 'Tollens reagent gives a silver mirror'),
        MatchEntry('Q', 'Fehling solution gives a red solid'),
        MatchEntry('R', 'Iodine and base give a yellow solid'),
        MatchEntry('S', 'Dilute base can start an aldol reaction'),
      ],
      'A-PQRS,B-P,C-RS,D-S',
      'Ethanal is an aliphatic aldehyde with a methyl group and α-hydrogens, so it does all four things and A is P, Q, R, and S. Benzaldehyde gives the silver mirror only: it is not oxidised by Fehling solution, it is not a methyl ketone, and it has no α-hydrogen, so B is P. Propanone gives iodoform and can form an enolate, but it is not an aldehyde, so C is R and S. Pentan-3-one can form an enolate, but it is not an aldehyde and not a methyl ketone, so D is S only.',
    ),
    _matrix(
      3,
      'Match each reagent with the change it makes to 1-phenylethanone.',
      const [
        MatchEntry('A', 'Sodium borohydride, then acid'),
        MatchEntry('B', 'Zinc amalgam and concentrated hydrochloric acid'),
        MatchEntry('C', 'Iodine and aqueous sodium hydroxide'),
        MatchEntry('D', 'A peracid such as mCPBA'),
      ],
      const [
        MatchEntry('P', '1-Phenylethanol'),
        MatchEntry('Q', 'Ethylbenzene'),
        MatchEntry('R', 'Sodium benzoate, together with iodoform'),
        MatchEntry('S', 'Phenyl ethanoate'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Borohydride delivers hydride to the carbonyl and the workup gives the secondary alcohol. Zinc amalgam replaces the carbonyl by CH2 and gives ethylbenzene. Iodine and base cleave the methyl ketone, so the ring fragment is benzoate and the methyl fragment is iodoform. The peracid moves the phenyl group onto oxygen and the ester is phenyl ethanoate.',
    ),
    _matrix(
      4,
      'Match each name with the description.',
      const [
        MatchEntry('A', 'Cannizzaro reaction'),
        MatchEntry('B', 'Aldol reaction'),
        MatchEntry('C', 'Wittig reaction with Ph3P=CH2'),
        MatchEntry('D', 'Clemmensen reduction'),
      ],
      const [
        MatchEntry('P', 'Used on an aldehyde that has no α-hydrogen'),
        MatchEntry('Q', 'Needs an α-hydrogen on a carbonyl compound'),
        MatchEntry('R', 'Replaces the carbonyl oxygen by a CH2 group that stays doubly bonded'),
        MatchEntry('S', 'Uses zinc amalgam and hydrochloric acid to replace C=O by CH2'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The Cannizzaro reaction is the disproportionation of an aldehyde that cannot enolise. The aldol reaction starts by removing an α-hydrogen. The methylene ylide leaves that carbon doubly bonded to the old carbonyl carbon. Clemmensen reduction uses the acidic zinc reagent and the carbon ends as CH2 with no double bond.',
    ),
    _matrix(
      5,
      'Match each treatment of cyclohexanone with the product.',
      const [
        MatchEntry('A', 'Ph3P=CH2'),
        MatchEntry('B', 'A peracid'),
        MatchEntry('C', 'Hydroxylamine'),
        MatchEntry('D', 'Sodium borohydride, then acid'),
      ],
      const [
        MatchEntry('P', 'Methylenecyclohexane'),
        MatchEntry('Q', 'Oxepan-2-one'),
        MatchEntry('R', 'Cyclohexanone oxime'),
        MatchEntry('S', 'Cyclohexanol'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The ylide replaces the oxygen by a doubly bonded CH2 group. The peracid inserts an oxygen into the ring and gives the seven-membered lactone. Hydroxylamine gives the oxime, C=N–OH. Borohydride reduces the ketone to the secondary alcohol and does not open or expand the ring.',
    ),
    _matrix(
      6,
      'Match each experiment with every description that fits.',
      const [
        MatchEntry('A', 'Benzaldehyde with concentrated sodium hydroxide'),
        MatchEntry('B', 'Benzaldehyde with ethanal, dilute sodium hydroxide, then heat'),
        MatchEntry('C', 'Benzaldehyde with acetic anhydride and sodium acetate'),
        MatchEntry('D', 'Methanal with benzaldehyde and concentrated sodium hydroxide'),
      ],
      const [
        MatchEntry('P', 'Phenylmethanol is formed'),
        MatchEntry('Q', 'An α,β-unsaturated aldehyde is formed'),
        MatchEntry('R', 'An α,β-unsaturated carboxylic acid is formed'),
        MatchEntry('S', 'A hydride moves from one aldehyde molecule to another'),
      ],
      'A-PS,B-Q,C-R,D-PS',
      'Concentrated base on benzaldehyde alone is the Cannizzaro reaction, so both the alcohol and the hydride transfer occur and A is P and S. Ethanal supplies the enolate, and the crossed condensation gives 3-phenylprop-2-enal, so B is Q. The anhydride reaction is the Perkin condensation and the isolated product is 3-phenylprop-2-enoic acid, so C is R. Methanal is oxidised and benzaldehyde is reduced in the crossed Cannizzaro reaction, so D is again P and S.',
    ),
  ],
);

final Exercise coExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of tests, products, and preparations',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give a silver mirror with Tollens reagent? Ethanal, benzaldehyde, propanone, 1-phenylethanone, methanal.',
      answer: '3',
      explanation:
          'Ethanal, benzaldehyde, and methanal are aldehydes, so each reduces Tollens reagent. Propanone and 1-phenylethanone are ketones and do not. The count is 3.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt:
          'How many of these undergo the Cannizzaro reaction with concentrated sodium hydroxide? Benzaldehyde, ethanal, methanal, 2,2-dimethylpropanal, propanone.',
      answer: '3',
      explanation:
          'Benzaldehyde, methanal, and 2,2-dimethylpropanal have no α-hydrogen, so concentrated base disproportionates them. Ethanal has α-hydrogens and undergoes the aldol reaction. Propanone is a ketone and cannot donate an aldehydic hydride. The count is 3.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give a yellow precipitate with iodine and aqueous sodium hydroxide? Propanone, pentan-3-one, 1-phenylethanone, benzaldehyde, ethanal.',
      answer: '3',
      explanation:
          'Propanone and 1-phenylethanone are methyl ketones, and ethanal is the aldehyde that also contains the CH3CO fragment. All three give iodoform. Pentan-3-one has ethyl groups on both sides of the carbonyl, and benzaldehyde has no methyl ketone. The count is 3.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'Methylmagnesium bromide is added to benzaldehyde, and dilute acid is added afterwards. How many carbon atoms are in the alcohol?',
      answer: '8',
      explanation:
          'Benzaldehyde already contains seven carbon atoms, six in the ring and one in the carbonyl group. The Grignard reagent adds one methyl carbon to that carbonyl carbon. The alcohol is 1-phenylethanol, and the number of carbon atoms is 8.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          'How many of these preparations give an aldehyde, rather than a ketone or a carboxylic acid? Toluene with chromyl chloride, then water; toluene with hot acidic permanganate; benzoyl chloride with hydrogen over palladium on barium sulfate; benzene with carbon monoxide, hydrogen chloride, aluminium chloride, and copper(I) chloride; propan-2-ol with pyridinium chlorochromate.',
      answer: '3',
      explanation:
          'The Etard oxidation, the Rosenmund reduction, and the formylation of benzene each give benzaldehyde. Hot permanganate gives benzoic acid. Pyridinium chlorochromate on propan-2-ol gives propanone, which is a ketone. The count of aldehyde preparations is 3.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'How many of these alkenes give propanone as one product when the ozonide is worked up with zinc and water? 2-Methylbut-2-ene, propene, 2,3-dimethylbut-2-ene, but-1-ene.',
      answer: '2',
      explanation:
          '2-Methylbut-2-ene is cut into propanone and ethanal. 2,3-Dimethylbut-2-ene is cut into two molecules of propanone. Propene gives ethanal and methanal. But-1-ene gives propanal and methanal. Two of the four alkenes produce propanone.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt:
          'How many of these have an α-hydrogen and can form an enolate with base? Ethanal, propanone, benzaldehyde, methanal, 1-phenylethanone.',
      answer: '3',
      explanation:
          'Ethanal, propanone, and 1-phenylethanone each have at least one hydrogen on a carbon next to the carbonyl. Benzaldehyde and methanal do not: the only hydrogen attached to the carbonyl carbon is the aldehydic hydrogen, which is not an α-hydrogen. The count is 3.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt:
          'How many of these ketones, on treatment with a peracid, give an ester in which a phenyl group has migrated? 1-Phenylethanone, diphenylmethanone, propanone, cyclohexanone.',
      answer: '2',
      explanation:
          'In 1-phenylethanone the phenyl group migrates ahead of the methyl group, and the ester is phenyl ethanoate. In diphenylmethanone a phenyl group is the only kind of group that can migrate, and the ester is phenyl benzoate. Propanone has only methyl groups, and cyclohexanone expands by migration of a ring carbon. Two of the four involve a phenyl migration.',
    ),
  ],
);
