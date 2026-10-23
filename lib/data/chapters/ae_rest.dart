import '../../models/content.dart';

const _e2 = 'ae-e2-m';
const _e3 = 'ae-e3-p';
const _e4 = 'ae-e4-x';
const _e5 = 'ae-e5-n';

final Exercise aeExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Tests, oxidation, ethers, and rearrangements',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which alcohols give a yellow precipitate with iodine and aqueous sodium hydroxide?',
      choices: const [
        Choice('a', 'Ethanol'),
        Choice('b', 'Propan-1-ol'),
        Choice('c', 'Propan-2-ol'),
        Choice('d', 'Methanol'),
      ],
      answer: 'a,c',
      explanation:
          'Ethanol is oxidised to ethanal, and the CH3CHO group is halogenated and cleaved to iodoform. Propan-2-ol is oxidised to propanone, a methyl ketone, which does the same. Propan-1-ol gives propanal, which is not a methyl ketone and does not give iodoform. Methanol gives methanal, which has no acetyl fragment. Only ethanol and propan-2-ol qualify.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which alcohols are oxidised to carboxylic acids by hot acidic potassium permanganate?',
      choices: const [
        Choice('a', 'Ethanol'),
        Choice('b', 'Propan-2-ol'),
        Choice('c', 'Phenylmethanol'),
        Choice('d', '2-Methylpropan-2-ol'),
      ],
      answer: 'a,c',
      explanation:
          'A primary alcohol is taken all the way to the carboxylic acid by hot acidic permanganate. Ethanol becomes ethanoic acid and phenylmethanol becomes benzoic acid. Propan-2-ol is secondary and stops at propanone. 2-Methylpropan-2-ol is tertiary and has no hydrogen on the carbinol carbon, so it is not oxidised to an acid under these conditions.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which pairs give an ether as the major product?',
      choices: const [
        Choice('a', 'Sodium ethoxide and bromoethane'),
        Choice('b', 'Sodium phenoxide and iodomethane'),
        Choice('c', 'Sodium ethoxide and 2-bromo-2-methylpropane'),
        Choice('d', 'Sodium tert-butoxide and bromoethane'),
      ],
      answer: 'a,b,d',
      explanation:
          'Williamson synthesis succeeds when the halide can undergo SN2. Bromoethane and iodomethane are unhindered, so ethoxide, phenoxide, and even the bulky tert-butoxide give ethers with them. Tert-butoxide plus bromoethane is the practical route to ethyl tert-butyl ether. Ethoxide plus the tertiary bromide eliminates instead, and the major product is 2-methylpropene.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which observations fit phenol?',
      choices: const [
        Choice('a', 'It dissolves in aqueous sodium hydroxide'),
        Choice('b', 'Neutral iron(III) chloride gives a violet colour'),
        Choice('c', 'Sodium hydrogencarbonate produces a brisk evolution of carbon dioxide'),
        Choice('d', 'Bromine water gives a pale solid'),
      ],
      answer: 'a,b,d',
      explanation:
          'Phenol is deprotonated by hydroxide and the salt dissolves. Iron(III) forms a coloured complex with the phenol, typically violet. Bromine water substitutes three times and 2,4,6-tribromophenol separates as a solid. Phenol is a weaker acid than carbonic acid, so it does not release carbon dioxide from hydrogencarbonate. A carboxylic acid would have done that.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'In which reactions does the carbon skeleton rearrange?',
      choices: const [
        Choice('a', '3,3-Dimethylbutan-2-ol heated with concentrated sulfuric acid'),
        Choice('b', 'Butan-2-ol heated with concentrated sulfuric acid'),
        Choice('c', '2,3-Dimethylbutane-2,3-diol warmed with concentrated sulfuric acid'),
        Choice('d', '2-Methylpropan-2-ol heated with concentrated sulfuric acid'),
      ],
      answer: 'a,c',
      explanation:
          'The secondary cation from 3,3-dimethylbutan-2-ol shifts a methyl group and the alkene that forms has a new skeleton. The pinacol, 2,3-dimethylbutane-2,3-diol, loses water and shifts a methyl group to give 3,3-dimethylbutan-2-one. Butan-2-ol dehydrates to butenes without moving a carbon. 2-Methylpropan-2-ol loses water to 2-methylpropene, and the four-carbon skeleton is already the one in the product.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which statements about propene oxide are correct?',
      choices: const [
        Choice('a', 'Methanol and acid place the methoxy group on the more substituted carbon'),
        Choice('b', 'Methoxide ion places the methoxy group on the less substituted carbon'),
        Choice('c', 'The carbon that is attacked is inverted'),
        Choice('d', 'Under basic conditions the nucleophile prefers the more substituted carbon'),
      ],
      answer: 'a,b,c',
      explanation:
          'Acid makes the opening have carbocation character, so the nucleophile bonds to the more substituted carbon. Methoxide without acid uses a plain SN2 path and bonds to the less substituted carbon. In both cases the nucleophile arrives from the side opposite the breaking C–O bond, so that carbon is inverted. The claim that base prefers the more substituted carbon is the acid result, not the base result.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which reagents convert propan-1-ol into propanal?',
      choices: const [
        Choice('a', 'Pyridinium chlorochromate in dichloromethane'),
        Choice('b', 'Sodium dichromate in aqueous sulfuric acid'),
        Choice('c', 'Chromium trioxide in pyridine'),
        Choice('d', 'Sodium borohydride in ethanol'),
      ],
      answer: 'a,c',
      explanation:
          'Pyridinium chlorochromate, and chromium trioxide used in pyridine, oxidise a primary alcohol to the aldehyde and stop. Aqueous acidic dichromate is the stronger, wetter oxidant and continues to propanoic acid. Borohydride is a reducing agent. It would turn propanal into propan-1-ol, not the other way round.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements about cleavage of ethers by hydrogen iodide are correct?',
      choices: const [
        Choice('a', 'Methoxybenzene and one equivalent of HI give phenol and iodomethane'),
        Choice('b', 'Ethoxyethane and excess hot HI give iodoethane'),
        Choice('c', 'Ethyl tert-butyl ether is cleaved so that iodide first bonds to the tertiary carbon'),
        Choice('d', 'Diphenyl ether is cleaved by cold HI as readily as ethoxyethane'),
      ],
      answer: 'a,b,c',
      explanation:
          'Iodide attacks the methyl group of methoxybenzene by SN2, and the aryl-oxygen bond survives, so the products are phenol and iodomethane. Excess hot HI converts both ethyl groups of ethoxyethane into iodoethane. In ethyl tert-butyl ether the tertiary carbon ionises, so the first iodide bonds there and ethanol is the other fragment. A diaryl ether has no alkyl carbon for SN2 or SN1 cleavage, and cold HI does not open it the way it opens a dialkyl ether.',
    ),
  ],
);

const _passageAlcoholsTitle = 'Four labelled bottles';

const _passageAlcohols = '''
Four bottles stand on one bench.

Bottle A is ethanol.
Bottle B is propan-2-ol.
Bottle C is 2-methylpropan-2-ol.
Bottle D is phenol.

Each test below is run on a fresh sample from one bottle. The bottles are not mixed.
''';

const _passageEpoxideTitle = 'An epoxide and a phenol';

const _passageEpoxide = '''
Propene oxide is divided into two flasks. Flask E is opened with methanol and a trace of acid. Flask F is opened with sodium methoxide in methanol.

In a third flask, phenol is heated with chloroform and potassium hydroxide. In a fourth, phenol is shaken with bromine water until a solid separates.
''';

final Exercise aeExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Four oxygen compounds, then an epoxide and a phenol',
  instruction:
      'Questions 1 to 4 use the four-bottles passage. Questions 5 to 8 use the epoxide and phenol passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageAlcoholsTitle,
      passage: _passageAlcohols,
      prompt: 'Which bottle clouds at once with Lucas reagent at room temperature?',
      choices: const [
        Choice('a', 'Bottle C'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Lucas reagent converts a tertiary alcohol into an insoluble chloride immediately. Bottle C is 2-methylpropan-2-ol. Bottle B is secondary and clouds only after a few minutes. Bottle A is primary and stays clear at room temperature. Phenol does not follow this ionisation to an alkyl chloride.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageAlcoholsTitle,
      passage: _passageAlcohols,
      prompt: 'Which bottle is oxidised to a ketone by pyridinium chlorochromate?',
      choices: const [
        Choice('a', 'Bottle B'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Propan-2-ol is a secondary alcohol, so pyridinium chlorochromate turns it into propanone. Ethanol is primary and would stop at ethanal. 2-Methylpropan-2-ol has no hydrogen on the carbinol carbon and is not oxidised. Phenol is not converted into a simple aliphatic ketone by this reagent.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageAlcoholsTitle,
      passage: _passageAlcohols,
      prompt: 'Which bottle dissolves in sodium hydroxide and gives no carbon dioxide with sodium hydrogencarbonate?',
      choices: const [
        Choice('a', 'Bottle D'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle C'),
      ],
      answer: 'a',
      explanation:
          'Phenol is acidic enough for hydroxide and not acidic enough for hydrogencarbonate. The other three bottles are alcohols. They are much weaker acids than phenol and do not dissolve in sodium hydroxide in the same way. None of the four is a carboxylic acid, so only phenol shows this pair of results.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageAlcoholsTitle,
      passage: _passageAlcohols,
      prompt: 'Which bottle is dehydrated most easily by concentrated sulfuric acid?',
      choices: const [
        Choice('a', 'Bottle C'),
        Choice('b', 'Bottle A'),
        Choice('c', 'Bottle B'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'a',
      explanation:
          'Dehydration goes through a carbocation, or a transition state with the same character. The tertiary alcohol in bottle C ionises most readily and gives 2-methylpropene. The secondary alcohol is next, and the primary alcohol needs harsher conditions. Phenol does not dehydrate to an alkene under these conditions because that would destroy the aromatic ring.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageEpoxideTitle,
      passage: _passageEpoxide,
      prompt: 'The major product in flask E is',
      choices: const [
        Choice('a', '2-methoxypropan-1-ol'),
        Choice('b', '1-methoxypropan-2-ol'),
        Choice('c', 'propan-1-ol'),
        Choice('d', '1,2-dimethoxypropane'),
      ],
      answer: 'a',
      explanation:
          'Acid protonates the epoxide, and methanol bonds to the more substituted carbon. The OH remains on the CH2 carbon. The product is 2-methoxypropan-1-ol. The regioisomer with the methoxy group on C1 is the product of the basic opening in flask F.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageEpoxideTitle,
      passage: _passageEpoxide,
      prompt: 'The major product in flask F is',
      choices: const [
        Choice('a', '1-methoxypropan-2-ol'),
        Choice('b', '2-methoxypropan-1-ol'),
        Choice('c', 'propane-1,2-diol'),
        Choice('d', 'methoxybenzene'),
      ],
      answer: 'a',
      explanation:
          'Methoxide attacks the less substituted carbon of the unprotonated epoxide. The methoxy group is on C1 and the OH is on C2, so the product is 1-methoxypropan-2-ol. Water would have given the diol. The acidic flask is the one that places methoxy on C2.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageEpoxideTitle,
      passage: _passageEpoxide,
      prompt: 'The major product from phenol, chloroform, and potassium hydroxide is',
      choices: const [
        Choice('a', '2-hydroxybenzaldehyde'),
        Choice('b', 'methoxybenzene'),
        Choice('c', '2,4,6-tribromophenol'),
        Choice('d', 'phenyl methanoate'),
      ],
      answer: 'a',
      explanation:
          'Dichlorocarbene from chloroform and base attacks ortho to the phenoxide, and hydrolysis leaves an aldehyde. The major product is 2-hydroxybenzaldehyde. The tribromo compound is what the fourth flask produces with bromine water. Chloroform and base do not methylate the oxygen.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageEpoxideTitle,
      passage: _passageEpoxide,
      prompt: 'The solid that separates from phenol and bromine water is',
      choices: const [
        Choice('a', '2,4,6-tribromophenol'),
        Choice('b', '4-bromophenol'),
        Choice('c', '2-hydroxybenzaldehyde'),
        Choice('d', 'bromobenzene'),
      ],
      answer: 'a',
      explanation:
          'Bromine water keeps substituting the activated ring until both ortho positions and the para position are filled. The solid is 2,4,6-tribromophenol. A single para bromide would require a limited amount of bromine in a solvent such as carbon disulfide. The aldehyde belongs to the chloroform reaction, not to this one.',
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

final Exercise aeExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Reagents, phenols, and ether openings',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each treatment of propan-1-ol with the organic product.',
      const [
        MatchEntry('A', 'Pyridinium chlorochromate in dichloromethane'),
        MatchEntry('B', 'Hot acidic potassium permanganate'),
        MatchEntry('C', 'Phosphorus tribromide'),
        MatchEntry('D', 'Concentrated sulfuric acid, heated strongly'),
      ],
      const [
        MatchEntry('P', 'Propanal'),
        MatchEntry('Q', 'Propanoic acid'),
        MatchEntry('R', '1-Bromopropane'),
        MatchEntry('S', 'Propene'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Pyridinium chlorochromate stops a primary alcohol at the aldehyde. Hot acidic permanganate continues to the carboxylic acid. Phosphorus tribromide replaces OH by Br on the same carbon, giving 1-bromopropane. Strong heat with sulfuric acid dehydrates the primary alcohol to propene.',
    ),
    _matrix(
      2,
      'Match each compound with every observation that fits it.',
      const [
        MatchEntry('A', '2-Methylpropan-2-ol'),
        MatchEntry('B', 'Propan-2-ol'),
        MatchEntry('C', 'Phenol'),
        MatchEntry('D', 'Ethanol'),
      ],
      const [
        MatchEntry('P', 'Lucas reagent gives an immediate cloud at room temperature'),
        MatchEntry('Q', 'Iodine and aqueous sodium hydroxide give a yellow solid'),
        MatchEntry('R', 'Neutral iron(III) chloride gives a violet colour'),
        MatchEntry('S', 'Hot acidic permanganate gives a carboxylic acid'),
      ],
      'A-P,B-Q,C-R,D-QS',
      '2-Methylpropan-2-ol ionises at once with Lucas reagent, so A is P. It has no CH3CH(OH) group, it is not a phenol, and the tertiary carbinol carbon is not oxidised to an acid. Propan-2-ol gives iodoform after it is oxidised to propanone, so B is Q. Its Lucas cloud is delayed, and permanganate stops at the ketone. Phenol gives the violet iron(III) colour, so C is R. It does not cloud with Lucas reagent, it does not give iodoform, and it is not oxidised to a simple aliphatic acid. Ethanol gives iodoform and is oxidised to ethanoic acid, so D is both Q and S. It is a primary alcohol, so Lucas reagent does not cloud it at room temperature, and iron(III) chloride does not turn it violet.',
    ),
    _matrix(
      3,
      'Match each opening of propene oxide with the product.',
      const [
        MatchEntry('A', 'Methanol and acid'),
        MatchEntry('B', 'Sodium methoxide in methanol'),
        MatchEntry('C', 'Aqueous acid, with no added methanol'),
        MatchEntry('D', 'Sodium hydroxide in water'),
      ],
      const [
        MatchEntry('P', '2-Methoxypropan-1-ol'),
        MatchEntry('Q', '1-Methoxypropan-2-ol'),
        MatchEntry('R', 'Propane-1,2-diol'),
        MatchEntry('S', 'Propan-2-ol'),
      ],
      'A-P,B-Q,C-R,D-R',
      'Acid and methanol place methoxy on the more substituted carbon, giving 2-methoxypropan-1-ol. Methoxide attacks the less substituted carbon, giving 1-methoxypropan-2-ol. Water, whether the opening is started by acid or by hydroxide, puts an OH on both carbons of the epoxide, so both C and D give propane-1,2-diol. The regiochemistry of water does not create a different constitutional isomer.',
    ),
    _matrix(
      4,
      'Match each attempt at an ether with the major outcome.',
      const [
        MatchEntry('A', 'Sodium ethoxide and bromoethane'),
        MatchEntry('B', 'Sodium phenoxide and iodomethane'),
        MatchEntry('C', 'Sodium ethoxide and 2-bromo-2-methylpropane'),
        MatchEntry('D', 'Sodium methoxide and bromobenzene'),
      ],
      const [
        MatchEntry('P', 'Ethoxyethane'),
        MatchEntry('Q', 'Methoxybenzene'),
        MatchEntry('R', '2-Methylpropene'),
        MatchEntry('S', 'No useful substitution; bromobenzene is recovered'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Ethoxide and bromoethane couple by SN2 to ethoxyethane. Phenoxide and iodomethane give methoxybenzene. The tertiary bromide eliminates with ethoxide, so the product is the alkene. Bromobenzene does not undergo SN2, and it is not activated for addition-elimination, so methoxide does not replace the bromine.',
    ),
    _matrix(
      5,
      'Match each preparation with the alcohol it produces.',
      const [
        MatchEntry('A', 'Propene, then borane, then alkaline hydrogen peroxide'),
        MatchEntry('B', 'Propene, then aqueous sulfuric acid'),
        MatchEntry('C', 'Ethanal and sodium borohydride, then acid'),
        MatchEntry('D', 'Ethanal and methylmagnesium bromide, then acid'),
      ],
      const [
        MatchEntry('P', 'Propan-1-ol'),
        MatchEntry('Q', 'Propan-2-ol'),
        MatchEntry('R', 'Ethanol'),
        MatchEntry('S', '2-Methylpropan-2-ol'),
      ],
      'A-P,B-Q,C-R,D-Q',
      'Hydroboration-oxidation places the OH on the less substituted carbon of propene, giving propan-1-ol. Aqueous acid places it on the more substituted carbon, giving propan-2-ol. Borohydride reduces ethanal to ethanol. Methylmagnesium bromide adds to ethanal and the workup gives propan-2-ol. 2-Methylpropan-2-ol would have needed a methyl ketone or a similar tertiary route, which is not in this list.',
    ),
    _matrix(
      6,
      'Match each comparison with the correct conclusion.',
      const [
        MatchEntry('A', 'Phenol compared with ethanol, as an acid'),
        MatchEntry('B', '4-Nitrophenol compared with phenol, as an acid'),
        MatchEntry('C', 'Pyridinium chlorochromate compared with hot acidic permanganate, on propan-1-ol'),
        MatchEntry('D', 'A tertiary alcohol compared with a primary alcohol, toward Lucas reagent'),
      ],
      const [
        MatchEntry('P', 'The first is the stronger acid'),
        MatchEntry('Q', 'The first stops at the aldehyde'),
        MatchEntry('R', 'The first gives a cloudy mixture sooner'),
        MatchEntry('S', 'The first is oxidised to a ketone'),
      ],
      'A-P,B-P,C-Q,D-R',
      'Phenol is stronger than ethanol because phenoxide is resonance-stabilised, and 4-nitrophenol is stronger still, so both A and B are P. Pyridinium chlorochromate stops propan-1-ol at propanal, while permanganate goes on to the acid, so C is Q. A tertiary alcohol clouds at once with Lucas reagent and a primary alcohol does not, so D is R. None of these rows produces a ketone.',
    ),
  ],
);

final Exercise aeExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of tests, products, and successful preparations',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many of these give a cloudy mixture immediately at room temperature with Lucas reagent? Ethanol, propan-2-ol, 2-methylpropan-2-ol, phenylmethanol, phenol.',
      answer: '2',
      explanation:
          'Immediate cloudiness needs a cation that forms at once. 2-Methylpropan-2-ol is tertiary, and phenylmethanol gives a benzylic cation, so both cloud immediately. Propan-2-ol is secondary and needs a few minutes. Ethanol is primary and does not cloud at room temperature. Phenol does not form an alkyl chloride this way. The count is 2.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt: 'How many moles of periodic acid are consumed by one mole of propane-1,2,3-triol?',
      answer: '2',
      explanation:
          'Periodic acid cleaves each bond between two carbons that bear OH groups. Glycerol has two such bonds, C1–C2 and C2–C3. The first cleavage uses one mole and the second uses another. The fragments are two molecules of methanal and one of methanoic acid. The count of periodic acid is 2.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt:
          'How many alkenes, counting cis and trans isomers separately, can form when butan-2-ol is heated with concentrated sulfuric acid?',
      answer: '3',
      explanation:
          'Loss of a proton from C1 gives but-1-ene. Loss of a proton from C3 gives but-2-ene, which exists as a cis isomer and a trans isomer. The trans isomer is the major product, but three alkenes can form. The chain does not rearrange into a branched alkene.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'Ethylmagnesium bromide is added to propanone, and acid is added afterwards. How many carbon atoms are in the alcohol?',
      answer: '5',
      explanation:
          'The ethyl group contributes two carbons and propanone contributes three. They join at the carbonyl carbon, which becomes the carbinol carbon of a tertiary alcohol. The product is 2-methylbutan-2-ol. The number of carbon atoms is 5.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          'How many of these preparations give an ether as the major product? Sodium ethoxide with bromoethane; sodium phenoxide with iodomethane; sodium tert-butoxide with bromoethane; sodium ethoxide with 2-bromo-2-methylpropane.',
      answer: '3',
      explanation:
          'The first three pair an alkoxide or phenoxide with an unhindered primary or methyl halide, so SN2 gives the ether. Sodium ethoxide with the tertiary bromide eliminates, and the major product is 2-methylpropene rather than an ether. Three of the four preparations succeed.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'Methoxybenzene is warmed with one equivalent of hydrogen iodide. How many different organic products are formed?',
      answer: '2',
      explanation:
          'Iodide attacks the methyl carbon. The bond between oxygen and the methyl group breaks, and the aryl-oxygen bond does not. The two organic products are phenol and iodomethane. Iodobenzene is not formed. The count is 2.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt:
          'How many constitutionally isomeric hydroxy ketones can form when phenyl ethanoate is treated with aluminium chloride?',
      answer: '2',
      explanation:
          'The acetyl group migrates from the phenolic oxygen onto the ring. It can attach ortho to the OH or para to the OH. Those are 1-(2-hydroxyphenyl)ethanone and 1-(4-hydroxyphenyl)ethanone. The meta isomer is not formed, because the substitution follows the directing effect of the oxygen. The count is 2.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt:
          'How many of these are oxidised to carboxylic acids by hot acidic potassium permanganate? Ethanol, propan-2-ol, phenylmethanol, 2-methylpropan-1-ol.',
      answer: '3',
      explanation:
          'Ethanol, phenylmethanol, and 2-methylpropan-1-ol are primary alcohols, so the oxidant carries each of them to a carboxylic acid. Propan-2-ol is secondary and stops at propanone. Three of the four give acids. 2-Methylpropan-1-ol is primary even though the chain is branched, and the CH2OH group is still oxidised.',
    ),
  ],
);
