import '../../models/content.dart';

const _e2 = 'hx-e2-m';
const _e3 = 'hx-e3-p';
const _e4 = 'hx-e4-x';
const _e5 = 'hx-e5-n';

final Exercise hxExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Mechanisms, rearrangements, and named substitutions',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which combinations give a useful SN2 substitution?',
      choices: const [
        Choice('a', 'Bromomethane with potassium cyanide in dimethylformamide'),
        Choice('b', '2-Bromo-2-methylpropane with sodium iodide in acetone'),
        Choice('c', '1-Bromobutane with sodium iodide in acetone'),
        Choice('d', '1-Bromobutane with potassium tert-butoxide in tert-butyl alcohol'),
      ],
      answer: 'a,c',
      explanation:
          'A methyl or primary bromide, a good nucleophile, and a polar aprotic solvent are the SN2 combination. Cyanide in dimethylformamide and iodide in acetone both qualify. The tertiary bromide is too crowded for backside attack. tert-Butoxide on a primary bromide is a bulky base and the major path is elimination to the alkene, not substitution.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which statements describe the reaction of 1-bromo-1-phenylethane with water?',
      choices: const [
        Choice('a', 'Raising the concentration of the bromide raises the rate'),
        Choice('b', 'Raising the concentration of sodium hydroxide raises the rate'),
        Choice('c', 'The alcohol that forms is a racemic mixture'),
        Choice('d', 'A carbocation is an intermediate'),
      ],
      answer: 'a,c,d',
      explanation:
          'The bromide is secondary and benzylic, so it ionises in water. The rate law contains only the alkyl bromide, and extra hydroxide does not speed the slow step. The cation is planar at the old stereocentre, so water bonds to either face and both enantiomers of 1-phenylethanol form. A concerted SN2 path would have inverted a single enantiomer and would have depended on the nucleophile.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'In which solvolyses, run with aqueous silver nitrate, can the carbon skeleton rearrange?',
      choices: const [
        Choice('a', '1-Bromo-2,2-dimethylpropane'),
        Choice('b', '2-Bromo-2-methylpropane'),
        Choice('c', '1-Bromo-2-methylpropane'),
        Choice('d', 'Bromomethane'),
      ],
      answer: 'a,c',
      explanation:
          'Silver ion helps the bromide leave. From 1-bromo-2,2-dimethylpropane a methyl shift produces a tertiary cation, so the skeleton changes. From 1-bromo-2-methylpropane a hydride shift does the same and leads to the tert-butyl cation. 2-Bromo-2-methylpropane is already tertiary, and capture of that cation does not need a rearrangement. Bromomethane does not ionise to a cation that could rearrange.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which eliminations give the more substituted alkene as the major product?',
      choices: const [
        Choice('a', '2-Bromobutane with sodium ethoxide'),
        Choice('b', '2-Bromobutane with potassium tert-butoxide'),
        Choice('c', '2-Bromo-2-methylbutane with sodium ethoxide'),
        Choice('d', '1-Bromobutane with potassium tert-butoxide'),
      ],
      answer: 'a,c',
      explanation:
          'A small strong base on a substrate that has two kinds of β-hydrogen prefers the more substituted double bond. Ethoxide does that with 2-bromobutane, giving trans-but-2-ene, and with 2-bromo-2-methylbutane, giving 2-methylbut-2-ene. tert-Butoxide is bulky and takes the more exposed hydrogen, so 2-bromobutane gives but-1-ene. 1-Bromobutane has only one kind of β-carbon that can make a double bond in the chain, and the bulky base still gives but-1-ene, which is the less substituted possible alkene of that family.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'Which halides form a Grignard reagent in dry ether?',
      choices: const [
        Choice('a', 'Bromobenzene'),
        Choice('b', '4-Bromophenol'),
        Choice('c', '1-Bromobutane'),
        Choice('d', '1-Bromo-2-nitrobenzene'),
      ],
      answer: 'a,c',
      explanation:
          'Magnesium inserts into the C–Br bond of bromobenzene and of 1-bromobutane, and neither molecule has an acidic hydrogen or a nitro group. 4-Bromophenol protonates any organomagnesium bond as soon as it forms. A nitro group is attacked by Grignard reagents, so 1-bromo-2-nitrobenzene does not give a usable reagent either.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which aryl chlorides give a phenol with hot aqueous sodium hydroxide by the addition-elimination path?',
      choices: const [
        Choice('a', 'Chlorobenzene'),
        Choice('b', '1-Chloro-4-nitrobenzene'),
        Choice('c', '1-Chloro-2,4-dinitrobenzene'),
        Choice('d', '1-Chloro-4-methylbenzene'),
      ],
      answer: 'b,c',
      explanation:
          'Addition of hydroxide to an aryl chloride needs a strongly electron-withdrawing group ortho or para to the chlorine, so the anionic intermediate can be stabilised. One nitro group is enough if the mixture is heated, and two nitro groups make the addition still easier. Chlorobenzene and the p-methyl compound do not stabilise that intermediate. A much stronger base, such as sodium amide, can react with them by a benzyne path instead.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which conversions are reliable preparations of the product named?',
      choices: const [
        Choice('a', '1-Chloropentane and sodium iodide in acetone give 1-iodopentane'),
        Choice('b', '1-Bromopentane and silver fluoride give 1-fluoropentane'),
        Choice('c', '1-Bromopentane and sodium fluoride in water give 1-fluoropentane'),
        Choice('d', 'Benzenediazonium chloride and copper(I) chloride give chlorobenzene'),
      ],
      answer: 'a,b,d',
      explanation:
          'Sodium iodide in acetone is the Finkelstein exchange, and the precipitated sodium chloride drives it toward the iodide. Silver fluoride is a Swarts reagent and replaces bromine with fluorine. Copper(I) chloride on the diazonium salt is the Sandmeyer route to chlorobenzene. Sodium fluoride in water does not carry out that fluorine exchange. The fluoride ion is heavily solvated, and water competes as a nucleophile.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements about elimination are correct?',
      choices: const [
        Choice('a', 'E2 requires the hydrogen and the leaving group to be anti-periplanar'),
        Choice('b', 'A bulky base favors the less substituted alkene'),
        Choice('c', 'E1 also requires an anti-periplanar hydrogen'),
        Choice('d', 'The E2 rate depends on both the alkyl halide and the base'),
      ],
      answer: 'a,b,d',
      explanation:
          'E2 is one step. The base takes the hydrogen while the leaving group departs, and the geometry that lines those two bonds up is anti-periplanar. The rate law therefore contains both the halide and the base. A bulky base reaches the less crowded β-hydrogen and the less substituted alkene becomes major. E1 first makes a cation and only then loses a proton. That proton can come from more than one neighbouring carbon, and a fixed anti arrangement is not required.',
    ),
  ],
);

const _passageFlasksTitle = 'Four flasks of one bromide';

const _passageFlasks = '''
A sample of (R)-2-bromobutane is split into four flasks.

Flask A contains sodium iodide in acetone.
Flask B contains aqueous silver nitrate.
Flask C contains sodium ethoxide in ethanol and is heated.
Flask D contains potassium tert-butoxide in tert-butyl alcohol and is heated.

Each flask receives only its own reagent.
''';

const _passageArylTitle = 'Three aromatic samples';

const _passageAryl = '''
Sample P is chlorobenzene heated with sodium amide in liquid ammonia.
Sample Q is 1-chloro-4-nitrobenzene heated with aqueous sodium hydroxide.
Sample R is benzenediazonium chloride stirred with copper(I) chloride.

No sample is mixed with another.
''';

final Exercise hxExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'One secondary bromide under four conditions, then three aryl reactions',
  instruction:
      'Questions 1 to 4 use the four-flasks passage. Questions 5 to 8 use the aromatic-samples passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The substitution product in flask A is',
      choices: const [
        Choice('a', '(S)-2-iodobutane'),
        Choice('b', '(R)-2-iodobutane'),
        Choice('c', 'a racemic mixture of 2-iodobutane'),
        Choice('d', '1-iodobutane'),
      ],
      answer: 'a',
      explanation:
          'Iodide in acetone attacks C2 from the side opposite the bromine. The configuration turns inside out, so the R bromide becomes the S iodide. There is no cation, and the iodine does not move to the end of the chain. A racemic product would have required the planar cation of flask B.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The alcohol isolated from flask B is',
      choices: const [
        Choice('a', 'racemic butan-2-ol'),
        Choice('b', '(S)-butan-2-ol only'),
        Choice('c', 'butan-1-ol'),
        Choice('d', '(R)-butan-2-ol only'),
      ],
      answer: 'a',
      explanation:
          'Silver ion pulls the bromide off and a secondary cation is left behind. That cation is planar, so water can bond to either face. Both enantiomers of butan-2-ol are formed. The single inverted alcohol would have been the SN2 result. Water does not attach itself to C1.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The major product in flask C is',
      choices: const [
        Choice('a', 'trans-but-2-ene'),
        Choice('b', 'but-1-ene'),
        Choice('c', 'cis-but-2-ene, ahead of the trans isomer'),
        Choice('d', '(S)-2-ethoxybutane'),
      ],
      answer: 'a',
      explanation:
          'Ethoxide is small enough to take an internal β-hydrogen, and the more substituted alkene is the more stable one. The trans isomer of but-2-ene keeps the two methyl groups apart, so it is the major product. The ethoxy compound is the substitution product and is minor under these basic conditions. The bulky base that favors but-1-ene is in flask D.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageFlasksTitle,
      passage: _passageFlasks,
      prompt: 'The major product in flask D is',
      choices: const [
        Choice('a', 'but-1-ene'),
        Choice('b', 'trans-but-2-ene'),
        Choice('c', 'cis-but-2-ene'),
        Choice('d', '2-tert-butoxybutane'),
      ],
      answer: 'a',
      explanation:
          'tert-Butoxide is too hindered to abstract the more crowded internal hydrogen as its main reaction. It takes a hydrogen from the terminal carbon, and the double bond forms at the end of the chain. The major alkene is but-1-ene. The same bromide with ethoxide gives the internal alkene. The bulky anion is a poor nucleophile, so the ether is not the main product.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageArylTitle,
      passage: _passageAryl,
      prompt: 'Sample P produces aniline. The intermediate is',
      choices: const [
        Choice('a', 'benzyne'),
        Choice('b', 'a Meisenheimer complex'),
        Choice('c', 'a benzenediazonium ion'),
        Choice('d', 'a phenyl cation'),
      ],
      answer: 'a',
      explanation:
          'Sodium amide removes a proton next to the chlorine and the chloride leaves, producing a triple bond in the ring. Amide ion adds to that benzyne, and protonation gives aniline. A Meisenheimer complex needs a nitro group to stabilise the added nucleophile. The diazonium ion is the starting material of sample R, not an intermediate here.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageArylTitle,
      passage: _passageAryl,
      prompt: 'The product of sample Q is',
      choices: const [
        Choice('a', '4-nitrophenol'),
        Choice('b', '3-nitrophenol'),
        Choice('c', 'phenol'),
        Choice('d', 'aniline'),
      ],
      answer: 'a',
      explanation:
          'Hydroxide adds to the carbon that bears chlorine, and the para nitro group stabilises the anionic intermediate. Chloride leaves and the ring is aromatic again. The hydroxyl group stands where the chlorine stood, so the product is 4-nitrophenol. The nitro group is not lost, and the substitution does not move to the meta position.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageArylTitle,
      passage: _passageAryl,
      prompt: 'Sample R produces',
      choices: const [
        Choice('a', 'chlorobenzene'),
        Choice('b', 'fluorobenzene'),
        Choice('c', 'phenol'),
        Choice('d', 'benzene'),
      ],
      answer: 'a',
      explanation:
          'Copper(I) chloride replaces the diazonium group with chlorine and nitrogen is lost. The product is chlorobenzene. Warming the same salt in water would have given phenol. A fluoride needs the tetrafluoroborate route, and benzene needs a reduction of the diazonium group.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageArylTitle,
      passage: _passageAryl,
      prompt: 'A second nitro group is placed ortho to the chlorine. Which sample becomes much faster?',
      choices: const [
        Choice('a', 'Sample Q'),
        Choice('b', 'Sample P'),
        Choice('c', 'Sample R'),
        Choice('d', 'None of them, because nitro groups slow every aryl substitution'),
      ],
      answer: 'a',
      explanation:
          'Sample Q is the addition-elimination reaction. A second nitro group ortho to the chlorine stabilises the anionic intermediate even more, so the addition is faster. Sample P is a benzyne elimination and is not activated in that way. Sample R starts from a diazonium salt, not from an aryl chloride, so an extra nitro group on a different substrate is not what speeds it.',
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

final Exercise hxExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Products, mechanisms, and named reactions',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each treatment of 2-bromobutane with the major product.',
      const [
        MatchEntry('A', 'Sodium iodide in acetone'),
        MatchEntry('B', 'Hot sodium ethoxide in ethanol'),
        MatchEntry('C', 'Hot potassium tert-butoxide'),
        MatchEntry('D', 'Aqueous silver nitrate'),
      ],
      const [
        MatchEntry('P', '2-Iodobutane'),
        MatchEntry('Q', 'trans-But-2-ene'),
        MatchEntry('R', 'But-1-ene'),
        MatchEntry('S', 'Butan-2-ol'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Iodide in acetone substitutes by SN2 and gives 2-iodobutane. Ethoxide eliminates to the more substituted alkene, and the trans isomer is major. tert-Butoxide eliminates to the terminal alkene. Aqueous silver ion ionises the bromide and water captures the cation, giving butan-2-ol.',
    ),
    _matrix(
      2,
      'Match each path with every description that fits.',
      const [
        MatchEntry('A', 'SN2 on a primary bromide'),
        MatchEntry('B', 'SN1 on a tertiary bromide'),
        MatchEntry('C', 'E2 with ethoxide'),
        MatchEntry('D', 'Substitution on 1-chloro-4-nitrobenzene'),
      ],
      const [
        MatchEntry('P', 'The rate law includes the nucleophile or the base'),
        MatchEntry('Q', 'A planar carbocation is an intermediate'),
        MatchEntry('R', 'Backside attack inverts the carbon'),
        MatchEntry('S', 'A Meisenheimer complex is an intermediate'),
      ],
      'A-PR,B-Q,C-P,D-PS',
      'SN2 is first order in the nucleophile and inverts the carbon, so A is P and R. SN1 ionises to a planar cation and the nucleophile is not in the rate law, so B is Q. E2 is first order in the base, so C is P, and it does not make a cation or a Meisenheimer complex. The nitroaryl chloride adds the nucleophile before the chloride leaves, so the rate includes the nucleophile and the intermediate is the Meisenheimer complex: D is P and S.',
    ),
    _matrix(
      3,
      'Ethylmagnesium bromide is treated with the reagent named, and acid is added afterwards. Match the product.',
      const [
        MatchEntry('A', 'Carbon dioxide'),
        MatchEntry('B', 'Methanal'),
        MatchEntry('C', 'Ethanal'),
        MatchEntry('D', 'Propanone'),
      ],
      const [
        MatchEntry('P', 'Propanoic acid'),
        MatchEntry('Q', 'Propan-1-ol'),
        MatchEntry('R', 'Butan-2-ol'),
        MatchEntry('S', '2-Methylbutan-2-ol'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Carbon dioxide gives a carboxylic acid with one more carbon than the ethyl group, which is propanoic acid. Methanal gives a primary alcohol, propan-1-ol. Ethanal gives a secondary alcohol, butan-2-ol. Propanone gives a tertiary alcohol, 2-methylbutan-2-ol. In every case the new bond is made to the carbon of the carbonyl group.',
    ),
    _matrix(
      4,
      'Match each named reaction with the reagent that defines it.',
      const [
        MatchEntry('A', 'Finkelstein exchange on 1-chlorobutane'),
        MatchEntry('B', 'Swarts reaction on 1-bromobutane'),
        MatchEntry('C', 'Sandmeyer reaction on benzenediazonium chloride'),
        MatchEntry('D', 'Wurtz coupling of bromoethane'),
      ],
      const [
        MatchEntry('P', 'Sodium iodide in acetone'),
        MatchEntry('Q', 'Silver fluoride'),
        MatchEntry('R', 'Copper(I) chloride'),
        MatchEntry('S', 'Sodium in dry ether'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Finkelstein is the iodide exchange in acetone. Swarts uses a metal fluoride such as silver fluoride to install fluorine. Sandmeyer uses a copper(I) halide to replace a diazonium group. Wurtz coupling is done with sodium in dry ether and joins two alkyl groups.',
    ),
    _matrix(
      5,
      'Match each comparison with the correct conclusion.',
      const [
        MatchEntry('A', 'Iodide compared with fluoride, as the leaving group in CH3–X under SN2 conditions'),
        MatchEntry('B', 'Bromomethane compared with 2-bromo-2-methylpropane, toward potassium iodide in acetone'),
        MatchEntry('C', 'Sodium ethoxide compared with potassium tert-butoxide, acting on 2-bromobutane'),
        MatchEntry('D', '1-Chloro-4-nitrobenzene compared with chlorobenzene, toward hot aqueous hydroxide'),
      ],
      const [
        MatchEntry('P', 'The first member reacts faster'),
        MatchEntry('Q', 'The first member gives the more substituted alkene'),
        MatchEntry('R', 'The first member undergoes addition-elimination much more readily'),
        MatchEntry('S', 'The first member is the stronger base'),
      ],
      'A-P,B-P,C-Q,D-R',
      'Iodide leaves faster than fluoride in an ordinary SN2 reaction, so A is P. Bromomethane is open to backside attack and the tertiary bromide is not, so B is also P. Ethoxide gives trans-but-2-ene, the more substituted alkene, while tert-butoxide gives but-1-ene, so C is Q. The nitroaryl chloride adds hydroxide and chlorobenzene does not, so D is R. None of these rows is about which species is the stronger base.',
    ),
    _matrix(
      6,
      'Match each reaction with the carbon-containing intermediate, or with the statement that there is none.',
      const [
        MatchEntry('A', '2-Bromo-2-methylpropane warmed in water'),
        MatchEntry('B', '2-Bromobutane heated with sodium ethoxide'),
        MatchEntry('C', '1-Chloro-4-nitrobenzene heated with hydroxide'),
        MatchEntry('D', 'Chlorobenzene heated with sodium amide'),
      ],
      const [
        MatchEntry('P', 'A carbocation'),
        MatchEntry('Q', 'No intermediate on carbon; the bond changes are concerted'),
        MatchEntry('R', 'A Meisenheimer complex'),
        MatchEntry('S', 'Benzyne'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The tertiary bromide ionises, so A passes through a carbocation. Ethoxide elimination on the secondary bromide is E2, one concerted step, so B has no carbon intermediate. Hydroxide adds to the nitroaryl chloride before chloride leaves, which is the Meisenheimer complex. Sodium amide turns chlorobenzene into benzyne before amide adds.',
    ),
  ],
);

final Exercise hxExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of products, stereoisomers, and successful reactions',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt:
          'How many stereoisomeric alcohols are formed when (R)-2-bromobutane is treated with aqueous silver nitrate? Count each enantiomer.',
      answer: '2',
      explanation:
          'Silver ion helps the bromide leave and a secondary cation remains. The cation is planar, so water bonds from either face and the two enantiomers of butan-2-ol are formed in equal amount. An SN2 reaction would have given only the inverted alcohol. The count is 2.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt:
          'How many alkenes, counting cis and trans isomers separately, can form when 2-bromobutane is heated with sodium ethoxide?',
      answer: '3',
      explanation:
          'Loss of a hydrogen from C1 gives but-1-ene. Loss of a hydrogen from C3 gives but-2-ene, which has a cis isomer and a trans isomer. That is three alkenes. The trans isomer is the major one, but the question asks how many can form, not which one predominates.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt:
          'How many constitutionally different alkenes can 2-bromo-2-methylbutane give on E2 elimination? Do not count stereoisomers separately.',
      answer: '2',
      explanation:
          'The tertiary bromide can lose a hydrogen from one of the methyl groups attached to the carbon that bears bromine, giving 2-methylbut-1-ene. It can instead lose a hydrogen from the CH2 of the ethyl group, giving 2-methylbut-2-ene. The more substituted alkene has two methyl groups on one end of the double bond, so it has no cis and trans forms to add to a constitutional count. The count is 2.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt:
          'How many of these halides react readily with sodium iodide in acetone? Bromoethane, 2-bromo-2-methylpropane, 1-bromo-2,2-dimethylpropane, (bromomethyl)benzene, bromobenzene.',
      answer: '2',
      explanation:
          'The reagent is an SN2 iodide. Bromoethane is primary and open, so it reacts. (Bromomethyl)benzene is also primary, and the benzyl carbon is especially easy to attack. The tertiary bromide is too crowded. The neopentyl bromide is blocked on the back side. Bromobenzene does not undergo SN2. Two of the five react readily.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          '1-Bromopropane is converted into a Grignard reagent and then treated with carbon dioxide, followed by acid. How many carbon atoms are in the carboxylic acid?',
      answer: '4',
      explanation:
          'The Grignard reagent contains the three-carbon propyl chain. Carbon dioxide contributes the carboxyl carbon, which is a fourth carbon. Acid frees butanoic acid. The count of carbon atoms is 4.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'Bromoethane is converted into a Grignard reagent and then treated with oxirane, followed by acid. How many carbon atoms are in the alcohol?',
      answer: '4',
      explanation:
          'Ethylmagnesium bromide attacks the less substituted carbon of the three-membered ether and opens it. The ethyl group contributes two carbons and the oxirane contributes two more. After acid is added the alcohol is butan-1-ol, which has four carbons.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt:
          'How many isomeric toluidines are formed when 1-chloro-4-methylbenzene is heated with sodium amide in liquid ammonia?',
      answer: '2',
      explanation:
          'The base generates a benzyne between C3 and C4 of the ring. Amide can add to either carbon of that triple bond. One addition puts the amino group para to the methyl group and the other puts it meta. The ortho isomer is not produced from this benzyne. The count is 2.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt:
          'How many of these preparations succeed? 1-Chlorobutane with sodium iodide in acetone; 1-bromobutane with silver fluoride; 1-bromobutane with sodium fluoride in water; benzenediazonium chloride with copper(I) chloride.',
      answer: '3',
      explanation:
          'Sodium iodide in acetone gives 1-iodobutane. Silver fluoride gives 1-fluorobutane. Copper(I) chloride gives chlorobenzene from the diazonium salt. Sodium fluoride in water does not usefully replace the bromine, because the fluoride is tightly solvated and water competes. Three of the four preparations succeed.',
    ),
  ],
);
