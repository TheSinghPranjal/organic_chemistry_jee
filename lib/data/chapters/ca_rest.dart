import '../../models/content.dart';

const _e2 = 'ca-e2-m';
const _e3 = 'ca-e3-p';
const _e4 = 'ca-e4-x';
const _e5 = 'ca-e5-n';

final Exercise caExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Acidity, preparations, and degradations',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which acids are stronger than benzoic acid?',
      choices: const [
        Choice('a', '4-Nitrobenzoic acid'),
        Choice('b', '4-Methoxybenzoic acid'),
        Choice('c', '2-Nitrobenzoic acid'),
        Choice('d', '4-Methylbenzoic acid'),
      ],
      answer: 'a,c',
      explanation:
          'A nitro group withdraws electrons and stabilises the carboxylate. That effect is strong from the para position and even stronger from the ortho position, where the withdrawal is joined by the usual ortho effect. Both nitro acids are stronger than benzoic acid. A para methoxy group and a para methyl group donate electrons, so those two acids are weaker than benzoic acid.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which preparations give propanoic acid?',
      choices: const [
        Choice('a', 'Ethylmagnesium bromide, then carbon dioxide, then dilute acid'),
        Choice('b', 'Propanenitrile heated with aqueous acid'),
        Choice('c', 'Propan-1-ol heated with acidic potassium permanganate'),
        Choice('d', '1-Bromopropane with sodium cyanide, then hot aqueous acid'),
      ],
      answer: 'a,b,c',
      explanation:
          'The ethyl Grignard reagent adds one carboxyl carbon, giving a three-carbon acid. Hydrolysis of propanenitrile keeps the three carbons and gives the same acid. Oxidation of the primary alcohol propan-1-ol also stops at propanoic acid. 1-Bromopropane already has three carbons, and cyanide adds a fourth, so the acid after hydrolysis is butanoic acid.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which compounds are reduced by lithium aluminium hydride to a primary alcohol?',
      choices: const [
        Choice('a', 'Propanoic acid'),
        Choice('b', 'Ethyl ethanoate'),
        Choice('c', 'Ethanamide'),
        Choice('d', 'Ethanoyl chloride'),
      ],
      answer: 'a,b,d',
      explanation:
          'Lithium aluminium hydride reduces a carboxylic acid, an ester, and an acid chloride to the primary alcohol. Propanoic acid gives propan-1-ol, and both the ester and the acid chloride give ethanol. Ethanamide is reduced as well, but the product is ethanamine, not an alcohol.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which compounds lose carbon dioxide on heating, with no soda-lime added?',
      choices: const [
        Choice('a', 'Propanedioic acid'),
        Choice('b', '3-Oxobutanoic acid'),
        Choice('c', 'Ethanoic acid'),
        Choice('d', 'Benzoic acid'),
      ],
      answer: 'a,b',
      explanation:
          'Easy thermal decarboxylation needs a second carbonyl placed so that a cyclic transition state can expel carbon dioxide. Propanedioic acid is a geminal diacid and gives ethanoic acid. 3-Oxobutanoic acid is a β-keto acid and gives propanone. Ethanoic acid and benzoic acid have no such neighbouring carbonyl. They lose carbon dioxide only when the salt is heated with soda-lime.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which reactions give aniline?',
      choices: const [
        Choice('a', 'Benzamide with bromine and potassium hydroxide'),
        Choice('b', 'Benzoyl azide heated, then treated with water'),
        Choice('c', 'Benzamide with lithium aluminium hydride'),
        Choice('d', 'Benzoic acid with hydrazoic acid and sulfuric acid'),
      ],
      answer: 'a,b,d',
      explanation:
          'The Hofmann bromamide reaction, the Curtius rearrangement of the acyl azide, and the Schmidt reaction of the acid all move the phenyl group onto nitrogen and lose the carboxyl carbon. Each gives aniline. Lithium aluminium hydride reduces benzamide without losing that carbon, so the product is phenylmethanamine.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which statements about esters are correct?',
      choices: const [
        Choice('a', 'In Fischer esterification the oxygen of the alcohol becomes the bridging oxygen of the ester'),
        Choice('b', 'Heating an ordinary ester with aqueous sodium hydroxide gives a carboxylate and an alcohol'),
        Choice('c', 'Sodium borohydride reduces ethyl ethanoate to ethanol at room temperature'),
        Choice('d', 'Acid-catalysed hydrolysis of ethyl benzoate breaks the bond between the carbonyl carbon and the ethoxy oxygen'),
      ],
      answer: 'a,b,d',
      explanation:
          'The alcohol is the nucleophile in Fischer esterification, so its oxygen stays in the ester and the acid’s OH leaves as water. Aqueous base adds to the carbonyl and the hydrolysis is pulled forward by formation of the carboxylate. The same acyl-oxygen bond breaks in ordinary acid hydrolysis. Sodium borohydride does not reduce esters.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which reagents convert ethanoic acid into ethanoyl chloride?',
      choices: const [
        Choice('a', 'Thionyl chloride'),
        Choice('b', 'Phosphorus pentachloride'),
        Choice('c', 'Hydrogen chloride'),
        Choice('d', 'Phosphorus trichloride'),
      ],
      answer: 'a,b,d',
      explanation:
          'Thionyl chloride, phosphorus pentachloride, and phosphorus trichloride all replace the OH of a carboxylic acid by chlorine. Thionyl chloride is often preferred because the inorganic products are gases. Hydrogen chloride does not make the acid chloride. It is what is produced when an acid chloride reacts with water, which is the reverse direction.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which esters can undergo a Claisen self-condensation with sodium ethoxide?',
      choices: const [
        Choice('a', 'Ethyl ethanoate'),
        Choice('b', 'Ethyl benzoate'),
        Choice('c', 'Ethyl propanoate'),
        Choice('d', 'Ethyl formate'),
      ],
      answer: 'a,c',
      explanation:
          'Self-condensation needs an α-hydrogen on the carbon next to the ester carbonyl. Ethyl ethanoate and ethyl propanoate have that hydrogen. Ethyl benzoate has the carbonyl attached to the ring, and ethyl formate has a hydrogen on the carbonyl carbon itself rather than on an α-carbon. Neither of those two can be the enolate donor.',
    ),
  ],
);

const _passageBottlesTitle = 'Four oxygen and nitrogen compounds';

const _passageBottles = '''
Four bottles stand on the bench.

Bottle A is ethanoic acid.
Bottle B is phenol.
Bottle C is ethyl ethanoate.
Bottle D is ethanamide.

Each test uses a fresh sample.
''';

const _passageSaltsTitle = 'Four treatments of propanoic acid';

const _passageSalts = '''
Propanoic acid is converted into four reagents.

Flask E contains sodium propanoate heated with soda-lime.
Flask F contains aqueous sodium propanoate being electrolysed, and the product of interest is formed at the anode.
Flask G contains silver propanoate treated with bromine.
Flask H contains propanoic acid treated with bromine and red phosphorus.
''';

final Exercise caExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Four bottles, then four treatments of one acid',
  instruction:
      'Questions 1 to 4 use the four-bottles passage. Questions 5 to 8 use the propanoic-acid passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle releases carbon dioxide from sodium hydrogencarbonate?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Only the carboxylic acid is strong enough to protonate hydrogencarbonate. Bottle A is ethanoic acid. Phenol, the ester, and the amide do not release carbon dioxide in this test.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle, on heating with aqueous sodium hydroxide, gives a carboxylate and an alcohol?',
      choices: const [
        Choice('a', 'Bottle C'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Ethyl ethanoate is saponified to sodium ethanoate and ethanol. Bottle A is already the acid. Phenol is not an ester. Ethanamide can be hydrolysed, but the nitrogen fragment is ammonia, not an alcohol, and the conditions are harsher.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle gives methanamine with bromine and potassium hydroxide?',
      choices: const [
        Choice('a', 'Bottle D'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle C'),
      ],
      answer: 'a',
      explanation:
          'The Hofmann bromamide reaction needs an amide. Ethanamide loses the carbonyl carbon and becomes methanamine. The acid, the phenol, and the ester do not rearrange in this way.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageBottlesTitle,
      passage: _passageBottles,
      prompt: 'Which bottle is reduced by lithium aluminium hydride to ethanamine?',
      choices: const [
        Choice('a', 'Bottle D'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle C'),
      ],
      answer: 'a',
      explanation:
          'Lithium aluminium hydride reduces an amide to an amine with the same number of carbons. Ethanamide becomes ethanamine. The acid and the ester are reduced to ethanol. Phenol is not reduced to an amine by this reagent.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageSaltsTitle,
      passage: _passageSalts,
      prompt: 'The organic product in flask E is',
      choices: const [
        Choice('a', 'ethane'),
        Choice('b', 'butane'),
        Choice('c', 'bromoethane'),
        Choice('d', '2-bromopropanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Soda-lime removes the carboxyl group of the salt and does not couple two chains. Sodium propanoate has a two-carbon alkyl group, so the hydrocarbon is ethane. Butane is the coupling product in flask F. The bromide and the bromo acid belong to the other two flasks.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageSaltsTitle,
      passage: _passageSalts,
      prompt: 'The hydrocarbon formed at the anode in flask F is',
      choices: const [
        Choice('a', 'butane'),
        Choice('b', 'ethane'),
        Choice('c', 'methane'),
        Choice('d', 'propane'),
      ],
      answer: 'a',
      explanation:
          'Electrolysis of the carboxylate produces an alkyl radical after carbon dioxide leaves. Two ethyl radicals couple at the anode, so the hydrocarbon is butane. Ethane is the soda-lime product in flask E. Methane would have required the ethanoate salt and soda-lime.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageSaltsTitle,
      passage: _passageSalts,
      prompt: 'The organic product in flask G is',
      choices: const [
        Choice('a', 'bromoethane'),
        Choice('b', '2-bromopropanoic acid'),
        Choice('c', 'propane'),
        Choice('d', 'propanoyl bromide'),
      ],
      answer: 'a',
      explanation:
          'The silver salt and bromine lose carbon dioxide and leave the alkyl bromide. Silver propanoate gives bromoethane. The α-bromo acid is the product in flask H, where the carboxyl group is kept. The chain is not reduced to propane.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageSaltsTitle,
      passage: _passageSalts,
      prompt: 'The organic product in flask H is',
      choices: const [
        Choice('a', '2-bromopropanoic acid'),
        Choice('b', '3-bromopropanoic acid'),
        Choice('c', 'bromoethane'),
        Choice('d', 'butane'),
      ],
      answer: 'a',
      explanation:
          'Bromine and phosphorus brominate the α-position of the acid and leave the carboxyl group in place. The product is 2-bromopropanoic acid. The bromine does not go to C3. Loss of the carboxyl group is what happens in flasks E, F, and G.',
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

final Exercise caExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Reagents, degradations, and condensations',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each treatment with the organic product.',
      const [
        MatchEntry('A', 'Ethanoic acid and thionyl chloride'),
        MatchEntry('B', 'Ethanoic acid and lithium aluminium hydride, then water'),
        MatchEntry('C', 'Ethanoic acid, bromine, and phosphorus'),
        MatchEntry('D', 'Sodium ethanoate heated with soda-lime'),
      ],
      const [
        MatchEntry('P', 'Ethanoyl chloride'),
        MatchEntry('Q', 'Ethanol'),
        MatchEntry('R', 'Bromoethanoic acid'),
        MatchEntry('S', 'Methane'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Thionyl chloride replaces OH by chlorine and gives the acid chloride. Lithium aluminium hydride reduces the acid to the primary alcohol. Bromine and phosphorus substitute the α-position and give bromoethanoic acid. Soda-lime removes the carboxyl group of the salt and leaves methane.',
    ),
    _matrix(
      2,
      'Match each compound with every statement that fits it.',
      const [
        MatchEntry('A', 'Ethanoic acid'),
        MatchEntry('B', 'Ethyl ethanoate'),
        MatchEntry('C', 'Ethanamide'),
        MatchEntry('D', 'Ethyl benzoate'),
      ],
      const [
        MatchEntry('P', 'Releases carbon dioxide from sodium hydrogencarbonate'),
        MatchEntry('Q', 'Can be the enolate donor in a Claisen self-condensation'),
        MatchEntry('R', 'Lithium aluminium hydride turns the acyl group into a primary alcohol'),
        MatchEntry('S', 'Bromine and potassium hydroxide give a primary amine with one fewer carbon'),
      ],
      'A-PR,B-QR,C-S,D-R',
      'Ethanoic acid releases carbon dioxide and is reduced to ethanol, so A is P and R. It is not an ester and it is not an amide. Ethyl ethanoate can form an enolate and is reduced to ethanol, so B is Q and R. Ethanamide undergoes the Hofmann bromamide reaction to methanamine, so C is S. The hydride reduction of the amide is an amine, not an alcohol. Ethyl benzoate has no α-hydrogen, so it cannot be the Claisen donor, but hydride still gives phenylmethanol, so D is R only.',
    ),
    _matrix(
      3,
      'Match each treatment of a propanoate with the organic product.',
      const [
        MatchEntry('A', 'Sodium propanoate heated with soda-lime'),
        MatchEntry('B', 'Aqueous sodium propanoate electrolysed, product at the anode'),
        MatchEntry('C', 'Silver propanoate treated with bromine'),
        MatchEntry('D', 'Propanoic acid treated with bromine and red phosphorus'),
      ],
      const [
        MatchEntry('P', 'Ethane'),
        MatchEntry('Q', 'Butane'),
        MatchEntry('R', 'Bromoethane'),
        MatchEntry('S', '2-Bromopropanoic acid'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Soda-lime shortens the salt by one carbon and gives ethane. Electrolysis couples two ethyl radicals and gives butane. The silver salt with bromine gives the alkyl bromide, bromoethane. Bromine and phosphorus keep the carboxyl group and brominate C2.',
    ),
    _matrix(
      4,
      'Match each preparation with the organic product.',
      const [
        MatchEntry('A', 'Ethanoyl chloride and ethanol'),
        MatchEntry('B', 'Ethanoic anhydride and ethanol'),
        MatchEntry('C', 'Ethanoyl chloride and an excess of ammonia'),
        MatchEntry('D', 'Ethanoic acid, ethanol, and an acid catalyst, heated'),
      ],
      const [
        MatchEntry('P', 'Ethyl ethanoate'),
        MatchEntry('Q', 'Ethanamide'),
        MatchEntry('R', 'Ethanamine'),
        MatchEntry('S', 'Ethanoic acid'),
      ],
      'A-P,B-P,C-Q,D-P',
      'The acid chloride, the anhydride, and the Fischer esterification all acylate ethanol and give ethyl ethanoate. Ammonia is acylated by the acid chloride to ethanamide. None of these four reactions reduces the carbonyl to an amine or simply hydrolyses the derivative back to the acid as the intended product.',
    ),
    _matrix(
      5,
      'Match each reduction with the product from the acyl part.',
      const [
        MatchEntry('A', 'Propanoic acid and lithium aluminium hydride'),
        MatchEntry('B', 'Methyl benzoate, one equivalent of DIBAL-H, cold, then water'),
        MatchEntry('C', 'Methyl benzoate and lithium aluminium hydride'),
        MatchEntry('D', 'Ethanamide and lithium aluminium hydride'),
      ],
      const [
        MatchEntry('P', 'A primary alcohol with the same number of carbons as the acyl group'),
        MatchEntry('Q', 'An aldehyde'),
        MatchEntry('R', 'A primary amine with the same number of carbons as the amide'),
        MatchEntry('S', 'A primary amine with one fewer carbon'),
      ],
      'A-P,B-Q,C-P,D-R',
      'Lithium aluminium hydride reduces the acid and the ester to primary alcohols, propan-1-ol and phenylmethanol. Cold DIBAL-H stops the ester at benzaldehyde. The same hydride reduces the amide to ethanamine and does not expel the carbonyl carbon. Loss of that carbon is the Hofmann result, which is not in this list of reductions.',
    ),
    _matrix(
      6,
      'Match each reaction with the product.',
      const [
        MatchEntry('A', 'Two moles of ethyl ethanoate and sodium ethoxide'),
        MatchEntry('B', 'Ethyl benzoate, ethyl ethanoate, and sodium ethoxide'),
        MatchEntry('C', 'Benzamide, bromine, and potassium hydroxide'),
        MatchEntry('D', 'Benzoyl azide heated, then water'),
      ],
      const [
        MatchEntry('P', 'Ethyl 3-oxobutanoate'),
        MatchEntry('Q', 'Ethyl 3-oxo-3-phenylpropanoate'),
        MatchEntry('R', 'Aniline'),
        MatchEntry('S', 'Phenylmethanamine'),
      ],
      'A-P,B-Q,C-R,D-R',
      'Self-condensation of ethyl ethanoate gives the β-keto ester ethyl 3-oxobutanoate. Ethyl benzoate cannot be the donor, but it accepts the enolate of ethyl ethanoate and the product is ethyl 3-oxo-3-phenylpropanoate. Both the Hofmann reaction of benzamide and the Curtius reaction of benzoyl azide give aniline. Phenylmethanamine would have required a hydride reduction of the amide.',
    ),
  ],
);

final Exercise caExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of acids, carbons, and successful reactions',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many of these are stronger acids than ethanoic acid? Fluoroethanoic acid, chloroethanoic acid, propanoic acid, benzoic acid, trifluoroethanoic acid.',
      answer: '4',
      explanation:
          'Fluoroethanoic acid, chloroethanoic acid, and trifluoroethanoic acid are strengthened by the halogens. Benzoic acid is stronger than ethanoic acid because the phenyl ring withdraws electrons relative to a methyl group. Propanoic acid has a larger alkyl group than ethanoic acid and is slightly weaker. Four of the five are stronger than ethanoic acid.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt:
          'Methylmagnesium bromide is treated with carbon dioxide, and dilute acid is added. How many carbon atoms are in the carboxylic acid?',
      answer: '2',
      explanation:
          'The methyl group contributes one carbon and carbon dioxide contributes the carboxyl carbon. The acid is ethanoic acid. The number of carbon atoms is 2.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt:
          'Aqueous sodium ethanoate is electrolysed. How many carbon atoms are in the hydrocarbon formed at the anode?',
      answer: '2',
      explanation:
          'Each ethanoate ion loses carbon dioxide and leaves a methyl radical. Two methyl radicals couple. The hydrocarbon is ethane, which has 2 carbon atoms. Soda-lime on the same salt would have given methane instead.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'How many of these are more reactive than ethyl ethanoate toward water? Ethanoyl chloride, ethanoic anhydride, ethanamide, ethyl benzoate.',
      answer: '2',
      explanation:
          'Ethanoyl chloride and ethanoic anhydride stand above an ester in the reactivity order, so both are hydrolysed more readily than ethyl ethanoate. Ethanamide is less reactive than an ester. Ethyl benzoate is itself an ester and is not more reactive than ethyl ethanoate in this comparison. The count is 2.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt: 'Sodium benzoate is heated with soda-lime. How many carbon atoms are in the organic product?',
      answer: '6',
      explanation:
          'The salt has seven carbon atoms, six in the ring and one in the carboxylate. Soda-lime removes the carboxyl carbon. The organic product is benzene, which has 6 carbon atoms.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give aniline? Benzamide with bromine and potassium hydroxide; benzoyl azide heated and then treated with water; benzoic acid with hydrazoic acid and sulfuric acid; benzamide with lithium aluminium hydride.',
      answer: '3',
      explanation:
          'The Hofmann, Curtius, and Schmidt reactions all give aniline and lose one carbon. Lithium aluminium hydride reduces benzamide to phenylmethanamine and keeps that carbon. Three of the four give aniline.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt:
          'How many of these esters can undergo a Claisen self-condensation? Ethyl ethanoate, ethyl propanoate, ethyl benzoate, ethyl formate.',
      answer: '2',
      explanation:
          'Ethyl ethanoate and ethyl propanoate have α-hydrogens and can be the enolate donor. Ethyl benzoate and ethyl formate do not have an α-hydrogen on carbon. Two of the four can self-condense.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt: 'One mole of ethyl ethanoate is reduced with lithium aluminium hydride. How many moles of ethanol are produced?',
      answer: '2',
      explanation:
          'The acyl part of ethyl ethanoate is reduced to ethanol, and the ethoxy part is already ethanol. Both fragments are the same alcohol. One mole of the ester therefore gives 2 moles of ethanol.',
    ),
  ],
);
