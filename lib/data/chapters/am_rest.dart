import '../../models/content.dart';

const _e2 = 'am-e2-m';
const _e3 = 'am-e3-p';
const _e4 = 'am-e4-x';
const _e5 = 'am-e5-n';

final Exercise amExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Basicity, preparations, and the tests',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which compounds are stronger bases than aniline in water?',
      choices: const [
        Choice('a', 'Ethanamine'),
        Choice('b', '4-Nitroaniline'),
        Choice('c', '4-Methoxyaniline'),
        Choice('d', 'N,N-Dimethylaniline'),
      ],
      answer: 'a,c,d',
      explanation:
          'Ethanamine is aliphatic, so its lone pair is local and the ethyl group donates electrons. It is a far stronger base than aniline. A para methoxy group donates into the ring and strengthens the aromatic amine. N,N-Dimethylaniline is also a little stronger than aniline. The para nitro group withdraws electron density, so 4-nitroaniline is weaker than aniline.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which reactions produce a primary amine?',
      choices: const [
        Choice('a', 'The phthalimide salt with bromoethane, then hydrazine'),
        Choice('b', 'Benzonitrile with lithium aluminium hydride, then water'),
        Choice('c', 'Ethanamide with lithium aluminium hydride, then water'),
        Choice('d', 'Aniline left in contact with an excess of iodomethane'),
      ],
      answer: 'a,b,c',
      explanation:
          'The phthalimide route gives ethanamine, a primary amine. Benzonitrile is reduced to phenylmethanamine, and ethanamide is reduced to ethanamine. Both of those are primary. Excess iodomethane alkylates aniline further and does not stop at a clean primary amine. That last mixture is how higher amines and a quaternary salt appear, not a preparation of a primary amine.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which reactions produce aniline?',
      choices: const [
        Choice('a', 'Nitrobenzene heated with tin and hydrochloric acid'),
        Choice('b', 'Benzamide warmed with bromine and potassium hydroxide'),
        Choice('c', 'Benzonitrile treated with lithium aluminium hydride'),
        Choice('d', 'Bromobenzene stirred with aqueous ammonia at room temperature'),
      ],
      answer: 'a,b',
      explanation:
          'Tin and acid reduce the nitro group of nitrobenzene to the amino group. Bromine and base rearrange benzamide and lose the carbonyl carbon, leaving aniline. Lithium aluminium hydride reduces benzonitrile to phenylmethanamine and keeps the extra carbon. An aryl bromide is not displaced by ammonia at room temperature, so that mixture does not give aniline.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which amines evolve nitrogen as soon as they meet nitrous acid at room temperature?',
      choices: const [
        Choice('a', 'Ethanamine'),
        Choice('b', 'Aniline kept at 0 °C'),
        Choice('c', 'Diethylamine'),
        Choice('d', 'Propan-1-amine'),
      ],
      answer: 'a,d',
      explanation:
          'A primary aliphatic amine forms a diazonium ion that collapses at once, so nitrogen is evolved. Both ethanamine and propan-1-amine do this. Aniline at 0 °C gives a diazonium salt that can be kept, and nitrogen is not released until that salt is warmed. Diethylamine is secondary and stops at an N-nitrosoamine, with no nitrogen gas.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which amines give an isocyanide with chloroform and potassium hydroxide?',
      choices: const [
        Choice('a', 'Ethanamine'),
        Choice('b', 'Aniline'),
        Choice('c', 'Diethylamine'),
        Choice('d', 'Triethylamine'),
      ],
      answer: 'a,b',
      explanation:
          'The isocyanide test needs a primary amine, aliphatic or aromatic. Ethanamine and aniline both have two hydrogens on nitrogen and both give a foul-smelling isocyanide. Diethylamine is secondary and triethylamine is tertiary. Neither has the two hydrogens the reaction requires, so neither gives an isocyanide.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt:
          'Which amines, after treatment with benzenesulfonyl chloride, give a product that dissolves in aqueous potassium hydroxide?',
      choices: const [
        Choice('a', 'Ethanamine'),
        Choice('b', 'Diethylamine'),
        Choice('c', 'Aniline'),
        Choice('d', 'Triethylamine'),
      ],
      answer: 'a,c',
      explanation:
          'Only a primary amine leaves a hydrogen on the sulfonamide nitrogen, and that hydrogen is removed by hydroxide. Ethanamine and aniline therefore give alkali-soluble sulfonamides. Diethylamine gives a sulfonamide with no such hydrogen, so the product stays out of the alkali. Triethylamine does not form a sulfonamide.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which statements about benzenediazonium chloride are correct?',
      choices: const [
        Choice('a', 'Copper(I) chloride replaces the diazonium group by chlorine'),
        Choice('b', 'Potassium iodide replaces the diazonium group by iodine'),
        Choice('c', 'Phenol in cold dilute base gives a para azo compound'),
        Choice('d', 'Benzene itself couples with the diazonium ion as readily as phenol does'),
      ],
      answer: 'a,b,c',
      explanation:
          'Copper(I) chloride is the Sandmeyer route to chlorobenzene. Iodide ion replaces the diazonium group without a copper salt and gives iodobenzene. Phenoxide is activated at the para position and couples to the azo dye. Benzene is not activated enough for that coupling, so the last statement is false.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements about substitution on aniline are correct?',
      choices: const [
        Choice('a', 'Bromine water gives 2,4,6-tribromoaniline'),
        Choice('b', 'Mixed nitric and sulfuric acids give 4-nitroaniline as the only product'),
        Choice('c', 'Acetylation, then nitration, then hydrolysis, gives 4-nitroaniline'),
        Choice('d', 'Chloromethane and aluminium chloride alkylate the ring cleanly at the para position'),
      ],
      answer: 'a,c',
      explanation:
          'The free amino group is so activating that bromine water substitutes all three ortho and para positions. Direct mixed-acid nitration protonates the amine, and the anilinium ion directs meta, with oxidation as a further complication, so 4-nitroaniline is not the clean product. Acetylation first avoids that protonation, nitration then prefers the para position, and hydrolysis frees 4-nitroaniline. Aluminium chloride is bound by the amino group, so the Friedel–Crafts alkylation does not occur.',
    ),
  ],
);

const _passageBottlesTitle = 'Four amines in four bottles';

const _passageBottles = '''
Four bottles are labelled only with letters.

Bottle A is ethanamine.
Bottle B is diethylamine.
Bottle C is aniline.
Bottle D is triethylamine.

Each test uses a fresh sample.
''';

const _passageFlasksTitle = 'Four routes to an amine';

const _passageFlasks = '''
Four flasks are set up.

Flask E contains the phthalimide salt treated with bromoethane, and the intermediate is then cleaved with hydrazine.
Flask F contains ethanamide treated with lithium aluminium hydride, and then water.
Flask G contains ethanamide treated with bromine and potassium hydroxide.
Flask H contains nitrobenzene heated with tin and hydrochloric acid.
''';

final Exercise amExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Four bottles, then four preparations',
  instruction:
      'Questions 1 to 4 use the four-bottles passage. Questions 5 to 8 use the four-flasks passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle is the strongest base in water?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'b',
      explanation:
          'Among the ethylamines in water, the secondary amine is the strongest base. Diethylamine is ahead of triethylamine, and both are ahead of ethanamine, because the conjugate acid of the secondary amine is well solvated and the alkyl groups still donate electrons. Aniline is far weaker. Bottle B is diethylamine.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives a foul-smelling isocyanide with chloroform and base, and has its nitrogen on a benzene ring?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'c',
      explanation:
          'The isocyanide reaction needs a primary amine. Ethanamine would give an isocyanide, but its nitrogen is not on a benzene ring. Aniline is primary and aromatic, so it is the bottle that satisfies both parts. Diethylamine and triethylamine do not give an isocyanide.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives a diazonium salt that can be kept at 0–5 °C?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'c',
      explanation:
          'Only a primary aromatic amine forms an arenediazonium salt that survives in ice. Aniline is that amine. Ethanamine loses nitrogen at once. Diethylamine forms an N-nitrosoamine, and triethylamine has no hydrogen on nitrogen with which to diazotise.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle forms a sulfonamide that does not dissolve in aqueous potassium hydroxide?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'b',
      explanation:
          'Diethylamine is secondary. It forms a sulfonamide, and that sulfonamide has no hydrogen on nitrogen, so it stays insoluble in the alkali. Ethanamine and aniline form sulfonamides that do dissolve. Triethylamine does not form a sulfonamide at all.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The amine formed in flask E is',
      choices: const [
        Choice('a', 'ethanamine'),
        Choice('b', 'methanamine'),
        Choice('c', 'aniline'),
        Choice('d', 'propan-1-amine'),
      ],
      answer: 'a',
      explanation:
          'Bromoethane alkylates the phthalimide nitrogen, and hydrazine releases a primary amine with that same ethyl group. The product is ethanamine. The chain is not lengthened and it is not shortened, and no benzene ring is present in the alkyl halide.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The amine formed in flask G is',
      choices: const [
        Choice('a', 'ethanamine'),
        Choice('b', 'methanamine'),
        Choice('c', 'aniline'),
        Choice('d', 'phenylmethanamine'),
      ],
      answer: 'b',
      explanation:
          'Bromine and potassium hydroxide rearrange ethanamide and expel the carbonyl carbon. The methyl group that remains becomes methanamine. The hydride reduction in flask F keeps both carbons and gives ethanamine instead. Flask G is the reaction that shortens the chain.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'Which flask produces the same amine as flask E?',
      choices: const [
        Choice('a', 'Flask F'),
        Choice('b', 'Flask G'),
        Choice('c', 'Flask H'),
        Choice('d', 'None of the other flasks'),
      ],
      answer: 'a',
      explanation:
          'Flask E produces ethanamine. Lithium aluminium hydride reduces ethanamide without losing a carbon, so flask F also produces ethanamine. Flask G loses a carbon and produces methanamine. Flask H reduces nitrobenzene and produces aniline.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The organic product in flask H is',
      choices: const [
        Choice('a', 'ethanamine'),
        Choice('b', 'phenylmethanamine'),
        Choice('c', 'aniline'),
        Choice('d', 'nitrobenzene, recovered unchanged'),
      ],
      answer: 'c',
      explanation:
          'Tin and hydrochloric acid reduce an aromatic nitro group to an amino group. Nitrobenzene becomes aniline. The product is not a side-chain amine, and the nitro group is not left unreduced by this reagent.',
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

final Exercise amExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Preparations, tests, and diazonium reactions',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each preparation with the amine it gives.',
      const [
        MatchEntry('A', 'Nitrobenzene heated with tin and hydrochloric acid'),
        MatchEntry('B', 'Benzonitrile with lithium aluminium hydride, then water'),
        MatchEntry('C', 'Ethanamide with bromine and potassium hydroxide'),
        MatchEntry('D', 'Ethanamide with lithium aluminium hydride, then water'),
      ],
      const [
        MatchEntry('P', 'Aniline'),
        MatchEntry('Q', 'Phenylmethanamine'),
        MatchEntry('R', 'Methanamine'),
        MatchEntry('S', 'Ethanamine'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Tin and acid reduce the nitro group and leave aniline. The hydride reduces the nitrile to a primary amine and keeps the nitrile carbon, so benzonitrile becomes phenylmethanamine. Bromine and base shorten ethanamide to methanamine. The same hydride on ethanamide keeps both carbons and gives ethanamine.',
    ),
    _matrix(
      2,
      'Match each amine with every statement that fits it.',
      const [
        MatchEntry('A', 'Ethanamine'),
        MatchEntry('B', 'Diethylamine'),
        MatchEntry('C', 'Aniline'),
        MatchEntry('D', 'Triethylamine'),
      ],
      const [
        MatchEntry('P', 'Chloroform and base give an isocyanide'),
        MatchEntry('Q', 'The Hinsberg sulfonamide dissolves in aqueous potassium hydroxide'),
        MatchEntry('R', 'The Hinsberg sulfonamide does not dissolve in aqueous potassium hydroxide'),
        MatchEntry('S', 'No sulfonamide is formed with benzenesulfonyl chloride'),
      ],
      'A-PQ,B-R,C-PQ,D-S',
      'Ethanamine and aniline are primary, so both give an isocyanide and both give a sulfonamide that still has a hydrogen and dissolves in alkali. Diethylamine is secondary: no isocyanide, and the sulfonamide has no acidic hydrogen, so it stays insoluble. Triethylamine is tertiary and forms neither an isocyanide nor a sulfonamide.',
    ),
    _matrix(
      3,
      'Match each treatment of benzenediazonium chloride with the organic product.',
      const [
        MatchEntry('A', 'Copper(I) chloride'),
        MatchEntry('B', 'Copper(I) cyanide'),
        MatchEntry('C', 'Warm water'),
        MatchEntry('D', 'Potassium iodide'),
      ],
      const [
        MatchEntry('P', 'Chlorobenzene'),
        MatchEntry('Q', 'Benzonitrile'),
        MatchEntry('R', 'Phenol'),
        MatchEntry('S', 'Iodobenzene'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Copper(I) chloride gives chlorobenzene and copper(I) cyanide gives benzonitrile. Warm water replaces the diazonium group by hydroxy and gives phenol. Potassium iodide gives iodobenzene without a copper salt. In every case nitrogen leaves.',
    ),
    _matrix(
      4,
      'Match each compound with the description of its base strength in water.',
      const [
        MatchEntry('A', 'Aniline'),
        MatchEntry('B', 'Ethanamine'),
        MatchEntry('C', '4-Nitroaniline'),
        MatchEntry('D', '4-Methoxyaniline'),
      ],
      const [
        MatchEntry('P', 'The strongest base of these four'),
        MatchEntry('Q', 'An aromatic amine stronger than aniline'),
        MatchEntry('R', 'An aromatic amine weaker than aniline'),
        MatchEntry('S', 'The unsubstituted aromatic amine'),
      ],
      'A-S,B-P,C-R,D-Q',
      'Ethanamine is aliphatic and is a much stronger base than any of the anilines, so it is the strongest of the four. Aniline is the unsubstituted reference. The para methoxy group donates electrons and makes 4-methoxyaniline stronger than aniline. The para nitro group withdraws electrons and makes 4-nitroaniline weaker than aniline.',
    ),
    _matrix(
      5,
      'Match each amine with the product of nitrous acid under the conditions given.',
      const [
        MatchEntry('A', 'Ethanamine at room temperature'),
        MatchEntry('B', 'Aniline at 0–5 °C'),
        MatchEntry('C', 'Diethylamine'),
        MatchEntry('D', 'N,N-Dimethylaniline'),
      ],
      const [
        MatchEntry('P', 'Nitrogen gas and ethanol'),
        MatchEntry('Q', 'A benzenediazonium salt'),
        MatchEntry('R', 'An N-nitrosamine'),
        MatchEntry('S', 'A para nitroso compound'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The primary aliphatic amine loses nitrogen at once and the ethyl fragment is captured as ethanol. Cold aniline gives a diazonium salt that can be kept. Diethylamine has one hydrogen on nitrogen and stops at the N-nitrosamine. N,N-Dimethylaniline has no hydrogen on nitrogen, so the nitroso group enters the para position of the ring.',
    ),
    _matrix(
      6,
      'Match each experiment with its result.',
      const [
        MatchEntry('A', 'Aniline and bromine water'),
        MatchEntry('B', 'Aniline, chloromethane, and aluminium chloride'),
        MatchEntry('C', 'Acetanilide nitrated, then hydrolysed'),
        MatchEntry('D', 'Aniline and acetic anhydride'),
      ],
      const [
        MatchEntry('P', '2,4,6-Tribromoaniline'),
        MatchEntry('Q', 'No alkyl group is placed on the ring'),
        MatchEntry('R', '4-Nitroaniline'),
        MatchEntry('S', 'Acetanilide'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Bromine water substitutes every free ortho and para position of aniline. The amino group binds aluminium chloride, so the Friedel–Crafts mixture does not alkylate the ring. Nitration of the amide gives the para nitro amide, and hydrolysis frees 4-nitroaniline. Acetic anhydride acetylates aniline and gives acetanilide, which is the protecting group used before that nitration.',
    ),
  ],
);

final Exercise amExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of bases, routes, and reactions',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many of these are stronger bases than aniline in water? Ethanamine, ammonia, 4-nitroaniline, 4-methylaniline, triethylamine.',
      answer: '4',
      explanation:
          'Ethanamine and triethylamine are aliphatic and are much stronger bases than aniline. Ammonia is also stronger than aniline, because the lone pair of aniline is delocalised into the ring. A para methyl group donates electrons, so 4-methylaniline is a stronger base than aniline. The para nitro group withdraws electrons, so 4-nitroaniline is weaker. Four of the five are stronger than aniline.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt:
          'The phthalimide salt is treated with bromoethane, and the product is cleaved with hydrazine. How many carbon atoms are in the amine?',
      answer: '2',
      explanation:
          'Bromoethane contributes an ethyl group and the cleavage step releases that group as the primary amine. The amine is ethanamine. The number of carbon atoms is 2.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give ethanamine? The phthalimide salt with bromoethane, then hydrazine; ethanenitrile with lithium aluminium hydride; ethanamide with bromine and potassium hydroxide; ethanamide with lithium aluminium hydride.',
      answer: '3',
      explanation:
          'The phthalimide route with bromoethane gives ethanamine. Ethanenitrile has two carbons and the hydride reduces it to ethanamine. The hydride on ethanamide also keeps both carbons and gives ethanamine. Bromine and base on ethanamide lose a carbon and give methanamine. Three of the four give ethanamine.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give an isocyanide with chloroform and potassium hydroxide? Ethanamine, aniline, diethylamine, triethylamine.',
      answer: '2',
      explanation:
          'Only a primary amine gives the isocyanide. Ethanamine and aniline are primary. Diethylamine is secondary and triethylamine is tertiary, so those two do not react in this way. The count is 2.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          'Benzenediazonium chloride is treated, in separate experiments, with copper(I) chloride, copper(I) bromide, potassium iodide, and warm water. How many of those experiments replace the diazonium group by a halogen?',
      answer: '3',
      explanation:
          'Copper(I) chloride gives chlorobenzene, copper(I) bromide gives bromobenzene, and potassium iodide gives iodobenzene. Warm water gives phenol, which is not a halogen. Three of the four experiments introduce a halogen.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'How many of these groups direct an incoming electrophile to the ortho and para positions? NH2, NHCOCH3, N(CH3)2, NH3+.',
      answer: '3',
      explanation:
          'The amino group, the acetamido group, and the dimethylamino group all donate electron density into the ring and direct ortho and para. The anilinium group, NH3+, has no lone pair to donate and withdraws electrons, so it directs meta. Three of the four groups are ortho–para directors.',
    ),
  ],
);
