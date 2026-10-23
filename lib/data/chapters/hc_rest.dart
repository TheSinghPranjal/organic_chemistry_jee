import '../../models/content.dart';

const _e2 = 'hc-e2-m';
const _e3 = 'hc-e3-p';
const _e4 = 'hc-e4-x';
const _e5 = 'hc-e5-n';

final Exercise hcExercise2 = Exercise(
  id: _e2,
  title: 'More than one correct',
  topic: 'Regiochemistry, stereochemistry, and preparations',
  instruction: 'Select every correct option. An incomplete set is marked wrong.',
  questions: [
    Question(
      id: '$_e2-q1',
      number: 1,
      kind: QuestionKind.multi,
      prompt: 'Which reagents give an anti-Markovnikov product from propene?',
      choices: const [
        Choice('a', 'Hydrogen bromide with a peroxide'),
        Choice('b', 'Hydrogen chloride with a peroxide'),
        Choice('c', 'Borane, then alkaline hydrogen peroxide'),
        Choice('d', 'Mercuric acetate in water, then sodium borohydride'),
      ],
      answer: 'a,c',
      explanation:
          'Peroxide sends hydrogen bromide down a radical path, and the bromine ends on C1. Borane also puts the new bond to the heteroatom on C1, and oxidation turns that into propan-1-ol. Hydrogen chloride does not follow the peroxide chain, so it still gives 2-chloropropane. Oxymercuration puts the OH on C2, which is the Markovnikov alcohol.',
    ),
    Question(
      id: '$_e2-q2',
      number: 2,
      kind: QuestionKind.multi,
      prompt: 'Which additions to an alkene are syn?',
      choices: const [
        Choice('a', 'Hydrogen with a metal catalyst'),
        Choice('b', 'Bromine in an inert solvent'),
        Choice('c', 'Cold, dilute alkaline permanganate'),
        Choice('d', 'Hydroboration, followed by oxidation'),
      ],
      answer: 'a,c,d',
      explanation:
          'A metal surface delivers both hydrogens to the same face. Permanganate forms a cyclic ester on one face and opens it to a syn diol. In hydroboration the boron and the hydrogen arrive together, and the later replacement of boron by OH keeps that stereochemistry, so the overall addition is syn. Bromine goes through a bromonium ion and is anti.',
    ),
    Question(
      id: '$_e2-q3',
      number: 3,
      kind: QuestionKind.multi,
      prompt: 'Which methods give butane as the only hydrocarbon product?',
      choices: const [
        Choice('a', 'Sodium with bromoethane in dry ether'),
        Choice('b', 'Hydrogen and a metal catalyst on but-1-ene'),
        Choice('c', 'Sodium with a mixture of bromomethane and 1-bromopropane, claimed to give only butane'),
        Choice('d', 'Heating sodium pentanoate with soda lime'),
      ],
      answer: 'a,b,d',
      explanation:
          'Two ethyl groups couple to butane, and nothing else of comparable mass is expected from a single bromide. Hydrogenation of but-1-ene saturates the chain to butane. Sodium pentanoate is C4H9CO2Na; loss of carbon dioxide leaves the four-carbon chain. A mixture of bromomethane and 1-bromopropane couples in three ways and gives ethane, propane, and butane together, so it does not give only butane.',
    ),
    Question(
      id: '$_e2-q4',
      number: 4,
      kind: QuestionKind.multi,
      prompt: 'Which statements about radical halogenation of alkanes are correct?',
      choices: const [
        Choice('a', 'Bromine is more selective than chlorine'),
        Choice('b', 'Fluorine is more selective than bromine'),
        Choice('c', 'A tertiary hydrogen is abstracted faster than a primary hydrogen'),
        Choice('d', 'Iodine halogenates methane as readily as chlorine does'),
      ],
      answer: 'a,c',
      explanation:
          'A less reactive halogen atom is more discriminating, so bromine shows a much larger tertiary-to-primary preference than chlorine. Within either reaction the tertiary C–H is still the fastest site, because the radical that forms is the most stable. Fluorine is the least selective of the three, and the reaction is hard to control. Iodine does not push the substitution forward the way chlorine does.',
    ),
    Question(
      id: '$_e2-q5',
      number: 5,
      kind: QuestionKind.multi,
      prompt: 'In which reactions of 3-methylbut-1-ene can the carbon skeleton rearrange?',
      choices: const [
        Choice('a', 'Aqueous sulfuric acid'),
        Choice('b', 'Hydrogen bromide, with no peroxide'),
        Choice('c', 'Oxymercuration followed by demercuration'),
        Choice('d', 'Borane, then alkaline hydrogen peroxide'),
      ],
      answer: 'a,b',
      explanation:
          'Aqueous acid and hydrogen bromide both produce an open secondary cation, and a hydride can shift to make a tertiary cation before the nucleophile arrives. Oxymercuration keeps a bridged ion and never frees that cation. Hydroboration is a concerted addition of boron and hydrogen, so there is no cation to rearrange. The unrearranged alcohols from those two methods are different from each other, but both keep the original skeleton.',
    ),
    Question(
      id: '$_e2-q6',
      number: 6,
      kind: QuestionKind.multi,
      prompt: 'Which statements about a terminal alkyne are correct?',
      choices: const [
        Choice('a', 'Sodium amide removes the acetylenic proton'),
        Choice('b', 'The alkyne is a weaker acid than the parent alkane'),
        Choice('c', 'Mercuric ion in aqueous acid converts it into a methyl ketone'),
        Choice('d', 'A Lindlar catalyst and hydrogen convert it into a cis alkene'),
      ],
      answer: 'a,c,d',
      explanation:
          'The sp C–H is acidic enough for sodium amide, which is why a terminal alkyne can be turned into a nucleophilic acetylide. Mercuric-ion hydration puts the oxygen on the inner carbon and the enol becomes a methyl ketone. Lindlar reduction stops at the cis alkene. The alkyne is a stronger acid than the alkane, not a weaker one, because the carbanion is on an sp carbon.',
    ),
    Question(
      id: '$_e2-q7',
      number: 7,
      kind: QuestionKind.multi,
      prompt: 'Which alkenes give at least one aldehyde on reductive ozonolysis?',
      choices: const [
        Choice('a', 'Propene'),
        Choice('b', '2,3-Dimethylbut-2-ene'),
        Choice('c', 'But-1-ene'),
        Choice('d', '2-Methylpropene'),
      ],
      answer: 'a,c,d',
      explanation:
          'An aldehyde forms when one of the alkene carbons still carries a hydrogen. Propene gives ethanal and methanal. But-1-ene gives propanal and methanal. 2-Methylpropene gives propanone and methanal, and methanal is an aldehyde. 2,3-Dimethylbut-2-ene has no hydrogen on either alkene carbon, so the only product is propanone.',
    ),
    Question(
      id: '$_e2-q8',
      number: 8,
      kind: QuestionKind.multi,
      prompt: 'Which statements about buta-1,3-diene and hydrogen bromide are correct?',
      choices: const [
        Choice('a', 'The 1,2-adduct is often the major product at low temperature'),
        Choice('b', 'The 1,4-adduct is often the major product after the mixture is warmed'),
        Choice('c', 'Conjugation makes this diene less stable than an isolated diene of the same formula'),
        Choice('d', 'Both adducts come from the same allylic cation'),
      ],
      answer: 'a,b,d',
      explanation:
          'Protonation at an end gives one allylic cation, with the charge shared by C2 and C4. Capture at C2 is faster at low temperature and gives 3-bromobut-1-ene. Capture at C4 gives 1-bromobut-2-ene, whose double bond is more substituted; that isomer wins if the addition is allowed to reverse. Conjugation stabilises the diene relative to an isolated isomer. It does not make it less stable.',
    ),
  ],
);

const _passageAddTitle = 'Four bottles and one alkene';

const _passageAdd = '''
A bench holds propene and four labelled bottles.

Bottle A contains hydrogen bromide, and the instructions say to keep peroxides out.
Bottle B contains hydrogen bromide together with a peroxide.
Bottle C contains borane in tetrahydrofuran, with a second step of alkaline hydrogen peroxide written underneath.
Bottle D contains mercuric acetate in water, with a second step of sodium borohydride.

Each bottle is used on a fresh sample of propene. No two bottles are combined.
''';

const _passageUnsaturatedTitle = 'A triple bond and a diene';

const _passageUnsaturated = '''
But-2-yne is divided into two portions. One portion is hydrogenated over a Lindlar catalyst. The other is treated with sodium in liquid ammonia. Both reactions are stopped when one equivalent of hydrogen has been added.

In a separate flask, buta-1,3-diene is cooled and one equivalent of hydrogen bromide is added. A second sample of the same diene is allowed to stand with hydrogen bromide at a higher temperature until the mixture stops changing.
''';

final Exercise hcExercise3 = Exercise(
  id: _e3,
  title: 'Linked comprehension',
  topic: 'Propene under four conditions, then an alkyne and a diene',
  instruction:
      'Questions 1 to 4 use the four-bottles passage. Questions 5 to 8 use the alkyne and diene passage. Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _e3,
      number: 1,
      passageTitle: _passageAddTitle,
      passage: _passageAdd,
      prompt: 'Which bottle produces 1-bromopropane?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'b',
      explanation:
          'Bottle B is the radical addition of hydrogen bromide. The bromine atom adds to the end carbon, and the product is 1-bromopropane. Bottle A is the ionic addition and gives 2-bromopropane. Bottles C and D produce alcohols, not bromides.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 2,
      passageTitle: _passageAddTitle,
      passage: _passageAdd,
      prompt: 'Which bottle produces propan-1-ol?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'c',
      explanation:
          'Borane places boron on C1. Alkaline peroxide replaces that boron with a hydroxyl group, so the alcohol is propan-1-ol. Bottle D also makes an alcohol, but the hydroxyl group goes to C2. The hydrogen bromide bottles make bromides.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 3,
      passageTitle: _passageAddTitle,
      passage: _passageAdd,
      prompt: 'Which bottle produces propan-2-ol without passing through a free carbocation?',
      choices: const [
        Choice('a', 'Bottle A'),
        Choice('b', 'Bottle B'),
        Choice('c', 'Bottle C'),
        Choice('d', 'Bottle D'),
      ],
      answer: 'd',
      explanation:
          'Mercuric acetate adds by a bridged ion, water attacks C2, and borohydride replaces the mercury with hydrogen. The result is propan-2-ol, and a free carbocation is never formed, so a rearrangement cannot intervene. Bottle C gives the primary alcohol. Bottle A gives a bromide by way of a secondary cation.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 4,
      passageTitle: _passageAddTitle,
      passage: _passageAdd,
      prompt: 'The carbon intermediate in bottle A is',
      choices: const [
        Choice('a', 'a secondary carbocation'),
        Choice('b', 'a primary carbocation'),
        Choice('c', 'a bromine atom, then a carbon radical'),
        Choice('d', 'a bridged mercurinium ion'),
      ],
      answer: 'a',
      explanation:
          'With peroxides excluded, hydrogen bromide adds ionically. The proton bonds to C1 because that leaves the positive charge on C2, which is secondary. A primary cation would have been the result of the opposite regiochemistry, and it is not formed. The radical chain belongs to bottle B, and the mercurinium ion belongs to bottle D.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 5,
      passageTitle: _passageUnsaturatedTitle,
      passage: _passageUnsaturated,
      prompt: 'The Lindlar reduction of but-2-yne gives',
      choices: const [
        Choice('a', 'cis-but-2-ene'),
        Choice('b', 'trans-but-2-ene'),
        Choice('c', 'butane'),
        Choice('d', 'but-1-ene'),
      ],
      answer: 'a',
      explanation:
          'The poisoned catalyst adds one equivalent of hydrogen from one face and then stops. Both new hydrogens are on the same side of the double bond, so the alkene is cis-but-2-ene. The chain is still four carbons in a row, with the double bond in the middle. Butane would require a second equivalent on an unpoisoned catalyst.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 6,
      passageTitle: _passageUnsaturatedTitle,
      passage: _passageUnsaturated,
      prompt: 'Sodium in liquid ammonia converts but-2-yne into',
      choices: const [
        Choice('a', 'cis-but-2-ene'),
        Choice('b', 'trans-but-2-ene'),
        Choice('c', 'butane'),
        Choice('d', 'buta-1,2-diene'),
      ],
      answer: 'b',
      explanation:
          'The dissolving-metal reduction builds a vinyl anion that adopts the trans geometry before it is protonated. The isolated alkene is trans-but-2-ene. This reagent does not continue on to the alkane, and it does not move the unsaturation out to a cumulative diene.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 7,
      passageTitle: _passageUnsaturatedTitle,
      passage: _passageUnsaturated,
      prompt: 'The major product from the cold addition of hydrogen bromide to buta-1,3-diene is',
      choices: const [
        Choice('a', '3-bromobut-1-ene'),
        Choice('b', '1-bromobut-2-ene'),
        Choice('c', '1-bromobutane'),
        Choice('d', 'bromobenzene'),
      ],
      answer: 'a',
      explanation:
          'Cold conditions trap the kinetic product. Bromide bonds to C2 of the allylic cation, next to the carbon that was protonated, and the remaining double bond stays at the end of the chain. That compound is 3-bromobut-1-ene. The isomeric 1-bromobut-2-ene is the product that grows in when the mixture is warmed.',
    ),
    singleQuestion(
      exerciseId: _e3,
      number: 8,
      passageTitle: _passageUnsaturatedTitle,
      passage: _passageUnsaturated,
      prompt: 'The warmer sample of the diene finishes as mostly 1-bromobut-2-ene because',
      choices: const [
        Choice('a', 'its double bond is more substituted than the double bond of the 1,2-adduct'),
        Choice('b', 'a radical chain takes over as soon as the flask is warm'),
        Choice('c', 'the warmer reaction hydrogenates the diene'),
        Choice('d', '1-bromobut-2-ene has no stereoisomers'),
      ],
      answer: 'a',
      explanation:
          '1-Bromobut-2-ene contains a disubstituted double bond, while 3-bromobut-1-ene contains a monosubstituted one. The disubstituted alkene is more stable. At a temperature where the addition can reverse, the mixture drifts toward that stabler isomer. The path is still the allylic cation, not a radical chain and not a hydrogenation. 1-Bromobut-2-ene does have cis and trans forms.',
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

final Exercise hcExercise4 = Exercise(
  id: _e4,
  title: 'Matrix match',
  topic: 'Reagents, stereochemistry, and preparations',
  instruction: 'Each row needs every code that fits. A row can take more than one letter.',
  questions: [
    _matrix(
      1,
      'Match each treatment of propene with the product.',
      const [
        MatchEntry('A', 'Hydrogen bromide, peroxides excluded'),
        MatchEntry('B', 'Hydrogen bromide with a peroxide'),
        MatchEntry('C', 'Borane, then alkaline hydrogen peroxide'),
        MatchEntry('D', 'Mercuric acetate in water, then sodium borohydride'),
      ],
      const [
        MatchEntry('P', '2-Bromopropane'),
        MatchEntry('Q', '1-Bromopropane'),
        MatchEntry('R', 'Propan-1-ol'),
        MatchEntry('S', 'Propan-2-ol'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Ionic addition of hydrogen bromide protonates C1 and leaves the bromide on C2, so A is 2-bromopropane. The peroxide path puts bromine on C1, so B is 1-bromopropane. Borane places the eventual hydroxyl on C1, so C is propan-1-ol. Oxymercuration places the hydroxyl on C2, so D is propan-2-ol.',
    ),
    _matrix(
      2,
      'Match each addition with every description that fits.',
      const [
        MatchEntry('A', 'Bromine in an inert solvent'),
        MatchEntry('B', 'Hydrogen and palladium'),
        MatchEntry('C', 'Cold, dilute alkaline permanganate'),
        MatchEntry('D', 'A peroxyacid, then aqueous acid'),
      ],
      const [
        MatchEntry('P', 'The two new groups are anti'),
        MatchEntry('Q', 'The two new groups are syn'),
        MatchEntry('R', 'A bridged halonium ion is involved'),
        MatchEntry('S', 'The product is a diol'),
      ],
      'A-PR,B-Q,C-QS,D-PS',
      'Bromine adds anti through a bromonium ion, so A is P and R. Catalytic hydrogenation delivers both hydrogens to one face, so B is syn and is not a diol. Cold permanganate gives a syn diol, so C is Q and S. A peroxyacid makes an epoxide, and aqueous acid opens it anti, so the diol from D is anti: P and S.',
    ),
    _matrix(
      3,
      'Match each preparation with the hydrocarbon it produces.',
      const [
        MatchEntry('A', 'Sodium and bromoethane'),
        MatchEntry('B', 'Kolbe electrolysis of potassium acetate'),
        MatchEntry('C', 'Sodium butanoate heated with soda lime'),
        MatchEntry('D', 'Hydrogen and a metal catalyst on propene'),
      ],
      const [
        MatchEntry('P', 'Ethane'),
        MatchEntry('Q', 'Propane'),
        MatchEntry('R', 'Butane'),
        MatchEntry('S', '2,3-Dimethylbutane'),
      ],
      'A-R,B-P,C-Q,D-Q',
      'Two ethyl groups couple to butane, so A is R. Kolbe electrolysis joins two methyl groups from acetate and gives ethane, so B is P. Sodium butanoate is C3H7CO2Na; loss of carbon dioxide leaves propane, so C is Q. Hydrogenation of propene also gives propane, so D is Q. 2,3-Dimethylbutane would be the coupling product of 2-bromopropane, which is not in this list.',
    ),
    _matrix(
      4,
      'Match each alkyne reaction with the functional group in the product.',
      const [
        MatchEntry('A', 'But-2-yne with hydrogen and a Lindlar catalyst'),
        MatchEntry('B', 'But-2-yne with sodium in liquid ammonia'),
        MatchEntry('C', 'Propyne with mercuric ion and aqueous acid'),
        MatchEntry('D', 'Propyne with disiamylborane, then alkaline peroxide'),
      ],
      const [
        MatchEntry('P', 'A cis alkene'),
        MatchEntry('Q', 'A trans alkene'),
        MatchEntry('R', 'A ketone'),
        MatchEntry('S', 'An aldehyde'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Lindlar reduction of an internal alkyne is cis, so A is P. Sodium in ammonia gives the trans alkene, so B is Q. Mercuric hydration of a terminal alkyne gives a methyl ketone, so C is R. The bulky borane puts oxygen on the end carbon and the tautomer is an aldehyde, so D is S.',
    ),
    _matrix(
      5,
      'Match each comparison with the correct conclusion.',
      const [
        MatchEntry('A', '2,3-Dimethylbut-2-ene compared with ethene'),
        MatchEntry('B', 'Ethyne compared with ethane'),
        MatchEntry('C', 'A bromine atom compared with a chlorine atom, abstracting hydrogen from an alkane'),
        MatchEntry('D', 'Hexa-2,4-diene compared with hexa-1,5-diene'),
      ],
      const [
        MatchEntry('P', 'Lower heat of hydrogenation, to the corresponding alkane'),
        MatchEntry('Q', 'The stronger acid'),
        MatchEntry('R', 'The more selective abstracting agent'),
        MatchEntry('S', 'The stronger base'),
      ],
      'A-P,B-Q,C-R,D-P',
      'The tetrasubstituted alkene is more stable than ethene, so it releases less heat on hydrogenation. Ethyne is the stronger acid because its hydrogen is on an sp carbon. A bromine atom is less reactive and therefore more selective than a chlorine atom. Hexa-2,4-diene is conjugated and hexa-1,5-diene is not, and both hydrogenate to hexane, so the conjugated diene has the lower heat of hydrogenation. None of these rows is about a stronger base.',
    ),
    _matrix(
      6,
      'Match each reaction with the carbon intermediate that actually forms.',
      const [
        MatchEntry('A', 'Hydrogen bromide added to propene, with no peroxide'),
        MatchEntry('B', 'Bromine added to cyclohexene'),
        MatchEntry('C', 'Hydrogen bromide added to propene in the presence of peroxide'),
        MatchEntry('D', 'Borane added to propene'),
      ],
      const [
        MatchEntry('P', 'A carbocation'),
        MatchEntry('Q', 'A bromonium ion'),
        MatchEntry('R', 'A carbon radical'),
        MatchEntry('S', 'No carbocation and no radical; the addition is concerted'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Ionic hydrogen bromide protonates the alkene and leaves a secondary cation, so A is P. Bromine closes a bromonium bridge, so B is Q. The peroxide reaction adds a bromine atom and leaves a carbon radical, so C is R. Borane adds boron and hydrogen in one step, with no cation and no radical, so D is S.',
    ),
  ],
);

final Exercise hcExercise5 = Exercise(
  id: _e5,
  title: 'Integer answers',
  topic: 'Counts of products, equivalents, and stereoisomers',
  instruction: 'Enter a non-negative integer.',
  questions: [
    Question(
      id: '$_e5-q1',
      number: 1,
      kind: QuestionKind.integer,
      prompt: 'How many constitutionally different monochloro products can 2-methylpropane give?',
      answer: '2',
      explanation:
          '2-Methylpropane has nine equivalent primary hydrogens on the three methyl groups, and one tertiary hydrogen. Replacing a primary hydrogen gives 1-chloro-2-methylpropane. Replacing the tertiary hydrogen gives 2-chloro-2-methylpropane. No other constitution is possible. The count is 2.',
    ),
    Question(
      id: '$_e5-q2',
      number: 2,
      kind: QuestionKind.integer,
      prompt: 'How many constitutionally different monochloro products can pentane give?',
      answer: '3',
      explanation:
          'Pentane is a straight chain. Chlorine can replace a hydrogen on C1, on C2, or on C3. C4 is the same as C2, and C5 is the same as C1. The three products are 1-chloropentane, 2-chloropentane, and 3-chloropentane.',
    ),
    Question(
      id: '$_e5-q3',
      number: 3,
      kind: QuestionKind.integer,
      prompt: 'How many alkynes have the molecular formula C5H8? Count constitutional isomers only.',
      answer: '3',
      explanation:
          'The straight-chain alkynes are pent-1-yne and pent-2-yne. Pent-3-yne is the same compound as pent-2-yne. The only branched alkyne is 3-methylbut-1-yne. A carbon of a triple bond has only one substituent, so no other branch fits into five carbons. The count is 3.',
    ),
    Question(
      id: '$_e5-q4',
      number: 4,
      kind: QuestionKind.integer,
      prompt: 'How many moles of hydrogen gas are needed to convert one mole of but-2-yne completely into butane?',
      answer: '2',
      explanation:
          'The triple bond becomes a double bond after one mole of hydrogen, and the double bond becomes the alkane after a second mole. But-2-yne has one site of unsaturation of this kind, counting as two π bonds, so two moles of H2 finish the job.',
    ),
    Question(
      id: '$_e5-q5',
      number: 5,
      kind: QuestionKind.integer,
      prompt:
          'How many moles of sodium amide are consumed by one mole of 1,1-dibromobutane before the mixture is poured into water?',
      answer: '3',
      explanation:
          'Two moles of base remove two molecules of HBr and produce but-1-yne. The terminal alkyne still has an acidic proton, and a third mole of sodium amide takes that proton. The acetylide salt is what exists before water is added. Water then returns the proton and frees the alkyne, but that step is after the base has already been consumed.',
    ),
    Question(
      id: '$_e5-q6',
      number: 6,
      kind: QuestionKind.integer,
      prompt:
          'How many different carbonyl compounds are formed when 2-methylbut-2-ene is ozonised and the ozonide is worked up with zinc and water?',
      answer: '2',
      explanation:
          'The double bond is cut into two carbonyls. One carbon carries two methyl groups and becomes propanone. The other carries a methyl group and a hydrogen and becomes ethanal. The reductive workup does not oxidise the aldehyde further. Two carbonyl compounds are formed.',
    ),
    Question(
      id: '$_e5-q7',
      number: 7,
      kind: QuestionKind.integer,
      prompt:
          'How many stereoisomers are formed when trans-but-2-ene reacts with bromine? Count a meso compound as one stereoisomer.',
      answer: '1',
      explanation:
          'Anti addition to the trans alkene gives (2R,3S)-2,3-dibromobutane. That stereoisomer has a mirror plane, so it is meso and it is a single compound, not a pair of enantiomers. The racemic pair is what cis-but-2-ene would have produced. The count here is 1.',
    ),
    Question(
      id: '$_e5-q8',
      number: 8,
      kind: QuestionKind.integer,
      prompt:
          'How many of these alkenes produce methanal on reductive ozonolysis? Propene, 2-methylpropene, trans-but-2-ene, but-1-ene.',
      answer: '3',
      explanation:
          'Methanal comes from a =CH2 end. Propene has one, 2-methylpropene has one, and but-1-ene has one. trans-But-2-ene is CH3CH=CHCH3, so both carbons of the double bond carry a methyl group and the cleavage gives ethanal only. Three of the four alkenes qualify.',
    ),
  ],
);
