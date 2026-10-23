import '../../models/content.dart';
import '../../sketch/gallery.dart';

const _e1 = 'goc-l2-e1';
const _e2 = 'goc-l2-e2';
const _e3 = 'goc-l2-e3';

final Exercise gocLevel2Exercise1 = Exercise(
  id: _e1,
  title: 'Exercise 1',
  topic: 'Comparisons, with three multi-correct items',
  instruction:
      'Level 2. Questions 1 to 9 have one correct option. Questions 10 to 12 need every correct option.',
  questions: [
    singleQuestion(
      exerciseId: _e1,
      number: 1,
      prompt: 'Which order of increasing acid strength is correct?',
      choices: const [
        Choice('a', '4-methoxyphenol < phenol < 3-nitrophenol < 4-nitrophenol'),
        Choice('b', '4-nitrophenol < 3-nitrophenol < phenol < 4-methoxyphenol'),
        Choice('c', 'phenol < 4-methoxyphenol < 4-nitrophenol < 3-nitrophenol'),
        Choice('d', '3-nitrophenol < 4-nitrophenol < 4-methoxyphenol < phenol'),
      ],
      answer: 'a',
      explanation:
          'A para methoxy group donates electrons by resonance, so 4-methoxyphenol is a weaker acid than phenol. A nitro group withdraws. From the meta position only induction is available. From the para position resonance withdrawal operates as well, so 4-nitrophenol is stronger than 3-nitrophenol. The increasing order starts with the methoxy phenol and ends with 4-nitrophenol.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 2,
      prompt: 'Which drawn molecule has a dipole moment of zero?',
      choices: [
        Choice('a', 'cis-1,2-dichloroethene', figure: cisDichloroethene),
        Choice('b', 'trans-1,2-dichloroethene', figure: transDichloroethene),
        Choice('c', '1,1-dichloroethene', figure: gemDichloroethene),
        Choice('d', 'cis-1,2-difluoroethene', figure: cisDifluoroethene),
      ],
      answer: 'b',
      explanation:
          'In trans-1,2-dichloroethene the two C–Cl dipoles are equal and point in opposite directions, so they cancel. In the cis isomer both chlorines are on the same side and the dipoles add. 1,1-Dichloroethene has both chlorines on one carbon, so it is polar. cis-1,2-Difluoroethene is polar for the same reason as the cis dichloro compound.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 3,
      figure: butadiene,
      prompt:
          'In the drawing of buta-1,3-diene, the central C2–C3 bond is shorter than a typical carbon–carbon single bond because',
      choices: const [
        Choice('a', 'it is a full triple bond'),
        Choice('b', 'resonance gives it partial double-bond character'),
        Choice('c', 'both carbons are sp3'),
        Choice('d', 'hyperconjugation makes every bond in the molecule longer'),
      ],
      answer: 'b',
      explanation:
          'The pi electrons are spread over all four carbons. One resonance drawing puts a double bond between C2 and C3, so the real bond order is greater than one. The bond is shorter than the single bond of ethane, but it is not a triple bond. Both carbons are sp2. Delocalisation shortens that central bond; it does not lengthen it.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 4,
      prompt: 'Which carbanion is the most stable?',
      choices: const [
        Choice('a', 'tert-butyl anion'),
        Choice('b', 'benzyl anion'),
        Choice('c', 'ethyl anion'),
        Choice('d', 'isopropyl anion'),
      ],
      answer: 'b',
      explanation:
          'The benzyl anion delocalises the negative charge onto the ortho and para carbons of the ring. The three alkyl anions keep the charge on one carbon. Among those, the more substituted anions are destabilised further by the electron release of the alkyl groups. Resonance makes the benzyl anion the most stable of the four.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 5,
      figure: neopentylCation,
      prompt: 'The drawn primary cation rearranges readily because',
      choices: const [
        Choice('a', 'a methyl shift produces a tertiary cation'),
        Choice('b', 'the charged carbon is already tertiary'),
        Choice('c', 'the shift would produce a vinyl cation'),
        Choice('d', 'a primary cation is more stable than a tertiary cation'),
      ],
      answer: 'a',
      explanation:
          'The carbon that bears the plus sign is attached to only one other carbon, so the cation is primary. A methyl group can move from the neighbouring quaternary carbon onto that primary centre. The electron pair of the migrating methyl stays with it, and the positive charge ends on the carbon that is left behind, which is now tertiary: (CH3)2C+–CH2CH3. A tertiary cation is more stable than a primary one, which is why the shift is favourable.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 6,
      prompt: 'Which is the best leaving group in a substitution?',
      choices: const [
        Choice('a', 'hydroxide, OH−'),
        Choice('b', 'chloride, Cl−'),
        Choice('c', 'iodide, I−'),
        Choice('d', 'amide, NH2−'),
      ],
      answer: 'c',
      explanation:
          'The best leaving groups are the weakest bases. Iodide is the conjugate base of a strong acid, so it leaves readily, and it leaves more readily than chloride. Hydroxide and amide are strong bases. They are very poor leaving groups and are usually protonated before a substitution can occur.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 7,
      prompt: 'Which order of increasing acid strength is correct?',
      choices: const [
        Choice('a', 'propanoic acid < ethanoic acid < methanoic acid'),
        Choice('b', 'methanoic acid < ethanoic acid < propanoic acid'),
        Choice('c', 'ethanoic acid < methanoic acid < propanoic acid'),
        Choice('d', 'propanoic acid < methanoic acid < ethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'An alkyl group donates electrons toward the carboxylate and destabilises it. Methanoic acid has no alkyl group, ethanoic acid has a methyl group, and propanoic acid has an ethyl group. Acidity therefore falls from methanoic to ethanoic to propanoic acid. The increasing order is propanoic, then ethanoic, then methanoic.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 8,
      prompt: 'Guanidine is an unusually strong organic base because',
      choices: const [
        Choice('a', 'the conjugate acid shares its positive charge over three nitrogen atoms by resonance'),
        Choice('b', 'guanidine contains no nitrogen'),
        Choice('c', 'the free base is aromatic'),
        Choice('d', 'protonation destroys an aromatic sextet and is therefore favoured'),
      ],
      answer: 'a',
      explanation:
          'Protonation gives the guanidinium ion. Three equivalent resonance forms place the positive charge on each nitrogen in turn, so the ion is strongly stabilised and the equilibrium lies toward it. Guanidine does contain nitrogen, the free base is not aromatic, and there is no aromatic sextet to destroy. The resonance of the conjugate acid is the reason.',
    ),
    singleQuestion(
      exerciseId: _e1,
      number: 9,
      prompt:
          'Benzene is much more stable than a hypothetical cyclohexatriene with three localised double bonds. That extra stability is called',
      choices: const [
        Choice('a', 'inductive energy'),
        Choice('b', 'resonance energy'),
        Choice('c', 'the bond dissociation energy of H2'),
        Choice('d', 'angle strain only'),
      ],
      answer: 'b',
      explanation:
          'Three ordinary double bonds would give benzene a heat of hydrogenation about three times the value for cyclohexene. The measured value is much smaller. The difference is the resonance energy that comes from aromatic delocalisation. It is not an inductive effect, not the bond energy of hydrogen, and benzene is not stabilised by angle strain; its angles are already close to 120 degrees.',
    ),
    Question(
      id: '$_e1-q10',
      number: 10,
      kind: QuestionKind.multi,
      prompt: 'Which groups withdraw electron density by the −I effect?',
      choices: const [
        Choice('a', '–NO2'),
        Choice('b', '–CN'),
        Choice('c', '–CH3'),
        Choice('d', '–Cl'),
      ],
      answer: 'a,b,d',
      explanation:
          'Nitro, cyano, and chloro are all more electronegative at the point of attachment than a plain alkyl carbon, so they pull sigma electron density toward themselves. A methyl group releases electron density relative to hydrogen. It is +I, so it does not belong in the set. The correct options are a, b, and d.',
    ),
    Question(
      id: '$_e1-q11',
      number: 11,
      kind: QuestionKind.multi,
      prompt:
          'Which species are stabilised by pi resonance, meaning delocalisation of a pi bond or a lone pair, rather than by hyperconjugation?',
      choices: const [
        Choice('a', 'acetate ion'),
        Choice('b', 'phenoxide ion'),
        Choice('c', 'tert-butyl cation'),
        Choice('d', 'allyl cation'),
      ],
      answer: 'a,b,d',
      explanation:
          'Acetate shares its charge between two oxygens through the carbonyl pi bond. Phenoxide delocalises the oxygen lone pair into the ring. The allyl cation has two equivalent drawings that move the pi bond and the charge between the ends. The tert-butyl cation has no conjugated pi bond. Its methyl groups stabilise it by hyperconjugation and induction, which this question is not asking for. The correct options are a, b, and d.',
    ),
    Question(
      id: '$_e1-q12',
      number: 12,
      kind: QuestionKind.multi,
      prompt: 'Which statements about benzene are correct?',
      choices: const [
        Choice('a', 'All six carbon–carbon bonds are equal'),
        Choice('b', 'It has six pi electrons in a planar, conjugated ring'),
        Choice('c', 'It has three fixed double bonds that never delocalise'),
        Choice('d', 'Every carbon is sp2 hybridised'),
      ],
      answer: 'a,b,d',
      explanation:
          'Benzene is a regular hexagon. Every C–C bond is about 139 pm, between a single and a double bond, so they are equal. The six pi electrons form a planar aromatic system, and each carbon is trigonal and sp2. A drawing with three fixed double bonds is only a Kekule form. It is not a static structure with alternating bonds that never average. The correct options are a, b, and d.',
    ),
  ],
);

final Exercise gocLevel2Exercise2 = Exercise(
  id: _e2,
  title: 'Exercise 2',
  topic: 'Harder single-correct comparisons',
  instruction: 'Level 2. Only one option is correct. These comparisons need more than one effect at once.',
  questions: [
    singleQuestion(
      exerciseId: _e2,
      number: 1,
      prompt: 'Which order of increasing basicity is correct?',
      choices: const [
        Choice('a', '4-nitroaniline < aniline < 4-methoxyaniline'),
        Choice('b', '4-methoxyaniline < aniline < 4-nitroaniline'),
        Choice('c', 'aniline < 4-nitroaniline < 4-methoxyaniline'),
        Choice('d', '4-nitroaniline < 4-methoxyaniline < aniline'),
      ],
      answer: 'a',
      explanation:
          'The lone pair on aniline is partly delocalised into the ring. A para methoxy group donates still more electron density by resonance, so the lone pair of 4-methoxyaniline is more available and the base is stronger. A para nitro group withdraws by resonance and holds the lone pair more tightly, so 4-nitroaniline is the weakest base of the three.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 2,
      prompt: 'Which radical is the most stable?',
      choices: const [
        Choice('a', 'methyl radical'),
        Choice('b', 'tert-butyl radical'),
        Choice('c', 'allyl radical'),
        Choice('d', 'vinyl radical'),
      ],
      answer: 'c',
      explanation:
          'The allyl radical is delocalised over three carbons, with two equivalent resonance forms. That resonance outweighs the hyperconjugation available to the tert-butyl radical. The C–H bond next to a double bond is weaker than the C–H bond of isobutane, which is the experimental sign that the allyl radical is more stable. A vinyl radical keeps the unpaired electron in an sp2 orbital and is less stable than an ordinary alkyl radical. Methyl has no extra stabilisation.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 3,
      prompt: 'Which order of increasing acid strength is correct?',
      choices: const [
        Choice('a', '4-methoxybenzoic acid < benzoic acid < 3-nitrobenzoic acid < 4-nitrobenzoic acid'),
        Choice('b', '4-nitrobenzoic acid < 3-nitrobenzoic acid < benzoic acid < 4-methoxybenzoic acid'),
        Choice('c', 'benzoic acid < 4-methoxybenzoic acid < 4-nitrobenzoic acid < 3-nitrobenzoic acid'),
        Choice('d', '3-nitrobenzoic acid < 4-nitrobenzoic acid < 4-methoxybenzoic acid < benzoic acid'),
      ],
      answer: 'a',
      explanation:
          'A para methoxy group donates by resonance and makes the acid weaker than benzoic acid. A nitro group withdraws. At the meta position only induction reaches the carboxylate. At the para position resonance withdrawal is available as well, so 4-nitrobenzoic acid is a little stronger than 3-nitrobenzoic acid. The increasing order begins with the methoxy acid and ends with the para nitro acid.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 4,
      prompt: 'Which compound cannot show keto–enol tautomerism?',
      choices: const [
        Choice('a', 'propanone'),
        Choice('b', 'ethanal'),
        Choice('c', 'benzophenone'),
        Choice('d', 'ethyl 3-oxobutanoate'),
      ],
      answer: 'c',
      explanation:
          'A keto–enol pair needs a hydrogen on a carbon next to the carbonyl. Propanone, ethanal, and ethyl 3-oxobutanoate all have that hydrogen. Ethyl 3-oxobutanoate has it between two carbonyl groups, which is why its enol is especially significant. Benzophenone has two phenyl rings on the carbonyl carbon and no alpha hydrogen, so it has no enol of this kind.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 5,
      figure: tertButylCation,
      prompt: 'The drawn cation is stabilised mainly by',
      choices: const [
        Choice('a', 'resonance with a conjugated double bond'),
        Choice('b', 'nine hyperconjugating C–H bonds, together with the inductive effect of three methyl groups'),
        Choice('c', 'an aromatic sextet'),
        Choice('d', 'an empty sp3 orbital'),
      ],
      answer: 'b',
      explanation:
          'The central carbon is attached to three methyl groups and to no pi bond. Each methyl group has three C–H bonds that can align with the empty p orbital, nine in all, and the methyl groups also release electron density by induction. The charged carbon is sp2, not sp3. The ion is not aromatic and has no resonance partner that moves a pi bond.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 6,
      prompt: 'Which hydrogen is the most acidic?',
      choices: const [
        Choice('a', 'a hydrogen in ethane'),
        Choice('b', 'a hydrogen in ethene'),
        Choice('c', 'the hydrogen in ethyne'),
        Choice('d', 'a hydrogen on the ring of benzene, compared as an sp2 C–H like ethene'),
      ],
      answer: 'c',
      explanation:
          'Acidity of a C–H bond rises with the s character of the carbon orbital that holds the lone pair of the conjugate base. The ethyne carbon is sp, about 50 percent s. Ethene and benzene carbons are sp2, about 33 percent s. The ethane carbon is sp3, about 25 percent s. Ethyne is the strongest acid of the set by a wide margin. Benzene is similar to ethene, not to ethyne.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 7,
      prompt: 'A chlorine atom at the para position of phenol',
      choices: const [
        Choice('a', 'makes the phenol slightly more acidic, because induction outweighs the weak resonance donation'),
        Choice('b', 'makes the phenol much less acidic, because chlorine donates strongly by resonance'),
        Choice('c', 'removes the acidic hydrogen'),
        Choice('d', 'makes the phenol a stronger base than hydroxide'),
      ],
      answer: 'a',
      explanation:
          'Chlorine withdraws by induction and donates weakly by resonance from the para position. On a phenol the inductive effect wins, so 4-chlorophenol is a little more acidic than phenol. The change is modest next to a nitro group, but the direction is toward higher acidity, not lower. The molecule is still an acid, not a base stronger than hydroxide.',
    ),
    singleQuestion(
      exerciseId: _e2,
      number: 8,
      prompt: 'The conjugate base of a stronger acid is',
      choices: const [
        Choice('a', 'a stronger base'),
        Choice('b', 'a weaker base'),
        Choice('c', 'always a radical'),
        Choice('d', 'always aromatic'),
      ],
      answer: 'b',
      explanation:
          'Acid strength and the base strength of the conjugate are two sides of one equilibrium. If HA gives up a proton readily, A− does not hold that proton tightly, so A− is a weak base. That is why iodide, from the strong acid HI, is a weak base and a good leaving group, while amide, from the very weak acid ammonia, is a strong base. The conjugate base is not required to be a radical or aromatic.',
    ),
  ],
);

final Exercise gocLevel2Exercise3 = Exercise(
  id: _e3,
  title: 'Exercise 3',
  topic: 'Matching lists',
  instruction:
      'Level 2. Match each entry in Column I with one entry in Column II. Each Column II entry is used once.',
  questions: [
    _match(
      1,
      'Match the effect with what it does.',
      [
        const MatchEntry('A', 'Inductive effect'),
        const MatchEntry('B', 'Resonance'),
        const MatchEntry('C', 'Electromeric effect'),
        const MatchEntry('D', 'Hyperconjugation'),
      ],
      [
        const MatchEntry('P', 'Permanent polarisation through sigma bonds that fades along a chain'),
        const MatchEntry('Q', 'Delocalisation of pi electrons with the atoms left in place'),
        const MatchEntry('R', 'A temporary, complete shift of a pi pair when a reagent approaches'),
        const MatchEntry('S', 'Overlap of a neighbouring sigma bond with a p orbital or a pi bond'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The inductive effect is the permanent sigma polarisation, so A belongs with P. Resonance moves only pi electrons or lone pairs, so B belongs with Q. The electromeric effect is the temporary full shift of a pi pair in the presence of a reagent, so C belongs with R. Hyperconjugation is the sigma overlap, so D belongs with S.',
    ),
    _match(
      2,
      'Match the species with the role named in Column II.',
      [
        const MatchEntry('A', 'BF3'),
        const MatchEntry('B', 'cyanide ion'),
        const MatchEntry('C', 'nitronium ion, NO2+'),
        const MatchEntry('D', 'ammonia'),
      ],
      [
        const MatchEntry('P', 'A Lewis acid used to accept a lone pair'),
        const MatchEntry('Q', 'A carbon nucleophile'),
        const MatchEntry('R', 'The electrophile that attacks a ring in nitration'),
        const MatchEntry('S', 'A neutral nitrogen nucleophile'),
      ],
      'A-P,B-Q,C-R,D-S',
      'BF3 has an incomplete octet and accepts a lone pair, so A belongs with P. Cyanide attacks through carbon, so B belongs with Q. The nitronium ion is the electrophile of nitration, so C belongs with R. Ammonia donates its nitrogen lone pair and is neutral, so D belongs with S.',
    ),
    _match(
      3,
      'Match the carbon with the hybridisation described in Column II.',
      [
        const MatchEntry('A', 'The carbon of methane'),
        const MatchEntry('B', 'Either carbon of ethene'),
        const MatchEntry('C', 'Either carbon of ethyne'),
        const MatchEntry('D', 'Any ring carbon of benzene'),
      ],
      [
        const MatchEntry('P', 'sp3, with four single bonds'),
        const MatchEntry('Q', 'sp2, taking part in one localised pi bond'),
        const MatchEntry('R', 'sp, linear, taking part in two pi bonds'),
        const MatchEntry('S', 'sp2, sharing a delocalised aromatic sextet'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Methane carbon is tetrahedral and sp3, so A belongs with P. Each ethene carbon is sp2 and shares one localised pi bond, so B belongs with Q. Each ethyne carbon is sp and linear, so C belongs with R. A benzene carbon is also sp2, but its p orbital is part of the delocalised sextet rather than one fixed pi bond, so D belongs with S and not with Q.',
    ),
    _match(
      4,
      'Match the acid with the reason it is comparatively strong.',
      [
        const MatchEntry('A', 'Trichloroethanoic acid'),
        const MatchEntry('B', '2,4,6-trinitrophenol'),
        const MatchEntry('C', 'Ethyne'),
        const MatchEntry('D', 'Methanoic acid, compared with ethanoic acid'),
      ],
      [
        const MatchEntry('P', 'Three chlorine atoms withdraw by the inductive effect'),
        const MatchEntry('Q', 'Three nitro groups stabilise the conjugate base by withdrawal'),
        const MatchEntry('R', 'The acidic carbon is sp hybridised'),
        const MatchEntry('S', 'There is no alkyl group donating toward the carboxylate'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Three chlorines make trichloroethanoic acid strong by induction, so A belongs with P. Three nitro groups stabilise the phenoxide of 2,4,6-trinitrophenol, so B belongs with Q. Ethyne is acidic for an hydrocarbon because the carbon is sp, so C belongs with R. Methanoic acid is stronger than ethanoic acid because it lacks a donating methyl group, so D belongs with S.',
    ),
    _match(
      5,
      'Match the cation with the feature that stabilises it most.',
      [
        const MatchEntry('A', 'tert-butyl cation'),
        const MatchEntry('B', 'allyl cation'),
        const MatchEntry('C', 'benzyl cation'),
        const MatchEntry('D', 'cycloheptatrienyl cation'),
      ],
      [
        const MatchEntry('P', 'Hyperconjugation from nine beta hydrogens'),
        const MatchEntry('Q', 'Two equivalent resonance forms'),
        const MatchEntry('R', 'An empty p orbital conjugated with a benzene ring'),
        const MatchEntry('S', 'An aromatic set of six pi electrons'),
      ],
      'A-P,B-Q,C-R,D-S',
      'The tert-butyl cation has nine beta hydrogens, so A belongs with P. The allyl cation has two equivalent drawings, so B belongs with Q. The benzyl cation conjugates an empty p orbital with the ring, so C belongs with R. The cycloheptatrienyl cation is the aromatic tropylium ion, with six pi electrons, so D belongs with S.',
    ),
    _match(
      6,
      'Match the molecule with its dipole.',
      [
        const MatchEntry('A', 'Carbon dioxide'),
        const MatchEntry('B', 'cis-1,2-dichloroethene'),
        const MatchEntry('C', 'trans-1,2-dichloroethene'),
        const MatchEntry('D', 'Ammonia'),
      ],
      [
        const MatchEntry('P', 'Zero, because the molecule is linear and the bond dipoles oppose each other'),
        const MatchEntry('Q', 'Not zero, because both chlorines lie on the same side'),
        const MatchEntry('R', 'Zero, because the two carbon–chlorine dipoles cancel'),
        const MatchEntry('S', 'Not zero, because the molecule is pyramidal'),
      ],
      'A-P,B-Q,C-R,D-S',
      'Carbon dioxide is linear and symmetric, so A belongs with P. The cis dichloro alkene keeps both C–Cl dipoles on one side, so B belongs with Q. The trans isomer cancels those dipoles, so C belongs with R. Ammonia is pyramidal and the N–H dipoles do not cancel, so D belongs with S.',
    ),
  ],
);

Question _match(
  int number,
  String prompt,
  List<MatchEntry> left,
  List<MatchEntry> right,
  String answer,
  String explanation,
) {
  return Question(
    id: '$_e3-q$number',
    number: number,
    kind: QuestionKind.match,
    prompt: prompt,
    column1: left,
    column2: right,
    answer: answer,
    explanation: explanation,
  );
}

final Level gocLevel2 = Level(
  id: 'goc-l2',
  title: 'Level 2',
  exercises: [gocLevel2Exercise1, gocLevel2Exercise2, gocLevel2Exercise3],
);
