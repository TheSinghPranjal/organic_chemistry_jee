import '../../models/content.dart';
import '../../sketch/aromatics.dart';

const _l1 = 'ar-e1-l1';
const _l2 = 'ar-e1-l2';
const _l3 = 'ar-e1-l3';

final Exercise arExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Aromaticity and the common ring reactions',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Which species is aromatic?',
      choices: const [
        Choice('a', 'Cyclobutadiene'),
        Choice('b', 'Cyclooctatetraene in its tub shape'),
        Choice('c', 'Benzene'),
        Choice('d', 'The cyclopentadienyl cation'),
      ],
      answer: 'c',
      explanation:
          'Benzene is cyclic, planar, and fully conjugated, and it has six π electrons, which is a 4n+2 count with n = 1. Cyclobutadiene has four π electrons and is antiaromatic when planar. The cyclopentadienyl cation also has four π electrons. Cyclooctatetraene has eight π electrons and adopts a tub shape, so it is not a planar aromatic ring. Only benzene meets the Hückel conditions.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'The cyclopentadienyl anion is aromatic. How many π electrons does it have?',
      choices: const [
        Choice('a', '4, so the ion is antiaromatic'),
        Choice('b', '6'),
        Choice('c', '8'),
        Choice('d', '2'),
      ],
      answer: 'b',
      explanation:
          'The ring has two double bonds, which supply four π electrons, and the negatively charged carbon contributes a lone pair in a p orbital. That is six π electrons, a 4n+2 count. The ion is cyclic, planar, and conjugated, so it is aromatic. The corresponding cation has only four π electrons and is antiaromatic.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'The scheme treats benzene with mixed acid. The organic product is',
      figure: nitrationBenzene,
      choices: const [
        Choice('a', 'nitrobenzene'),
        Choice('b', 'benzenesulfonic acid'),
        Choice('c', 'bromobenzene'),
        Choice('d', 'benzene, recovered, because mixed acid only sulphonates the ring'),
      ],
      answer: 'a',
      explanation:
          'Nitric acid and sulfuric acid generate the nitronium ion, NO2+. That electrophile adds to benzene, and loss of a proton restores the aromatic ring. The product is nitrobenzene. Sulfur trioxide would have been needed for the sulfonic acid, and a halogen with a Lewis acid for bromobenzene.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Benzenesulfonic acid is heated with dilute aqueous acid. The organic product is',
      choices: const [
        Choice('a', 'nitrobenzene'),
        Choice('b', 'phenol'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'benzene'),
      ],
      answer: 'd',
      explanation:
          'Sulphonation of benzene is reversible. Hot dilute acid protonates the sulfonic acid and the SO3H group leaves, so the ring returns to benzene. This is not an oxidation to the carboxylic acid and it does not replace the sulfur group by OH. The same reversibility is why a sulfonic acid can be used as a temporary blocking group.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'The scheme alkylates benzene with 1-chloropropane and aluminium chloride. The major product is',
      figure: fcRearrange,
      choices: const [
        Choice('a', '(propan-1-yl)benzene'),
        Choice('b', '(propan-2-yl)benzene'),
        Choice('c', 'toluene'),
        Choice('d', 'nitrobenzene'),
      ],
      answer: 'b',
      explanation:
          'Aluminium chloride helps the primary chloride leave, but a primary carbocation rearranges. A hydride shifts from C2 to C1 and the electrophile that attacks the ring is the secondary cation. The product is (propan-2-yl)benzene, not the straight-chain propylbenzene. Making the unrearranged chain needs acylation followed by reduction of the ketone.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Toluene is treated with bromine and iron(III) bromide in the dark. The major products are',
      choices: const [
        Choice('a', '(bromomethyl)benzene only'),
        Choice('b', '3-bromotoluene as the major isomer'),
        Choice('c', '2-bromotoluene and 4-bromotoluene'),
        Choice('d', 'no reaction, because a methyl group deactivates the ring'),
      ],
      answer: 'c',
      explanation:
          'Iron(III) bromide polarises bromine so the ring can be attacked. The methyl group is an ortho–para director and a weak activator, so bromine enters at C2 and C4. The meta isomer is minor. Putting bromine on the methyl carbon needs light or heat and no Lewis acid, which is a radical reaction on the side chain rather than this ionic substitution.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'The scheme oxidises an alkylbenzene. The organic product, after acid workup, is',
      figure: sideChainOxidation,
      choices: const [
        Choice('a', 'benzoic acid'),
        Choice('b', 'acetophenone'),
        Choice('c', 'benzene'),
        Choice('d', 'ethylbenzene, recovered, because permanganate does not touch an aromatic side chain'),
      ],
      answer: 'a',
      explanation:
          'Hot permanganate attacks a benzylic hydrogen and oxidises the whole side chain down to a carboxyl group. Ethylbenzene therefore becomes benzoic acid. The ring itself stays aromatic. A ketone would require a milder, selective oxidation, and the side chain is not simply lost as an unsubstituted benzene.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Which substituent deactivates benzene and directs the next electrophile to the meta position?',
      choices: const [
        Choice('a', 'CH3'),
        Choice('b', 'OH'),
        Choice('c', 'Cl'),
        Choice('d', 'NO2'),
      ],
      answer: 'd',
      explanation:
          'A nitro group withdraws electron density by induction and by resonance, so the ring is less reactive than benzene and the positions ortho and para to the nitro group are especially electron-poor. The electrophile enters meta. Methyl and hydroxy groups donate and direct ortho–para. Chlorine withdraws inductively, so it deactivates, but its lone pairs still direct ortho–para.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'Which description of chlorobenzene is correct?',
      choices: const [
        Choice('a', 'Chlorine activates the ring and directs meta'),
        Choice('b', 'Chlorine deactivates the ring and directs ortho and para'),
        Choice('c', 'Chlorine deactivates the ring and directs meta'),
        Choice('d', 'Chlorine activates the ring and directs ortho and para'),
      ],
      answer: 'b',
      explanation:
          'Chlorine is more electronegative than carbon, so it pulls electron density out of the ring and electrophilic substitution is slower than in benzene. At the same time a lone pair on chlorine can be donated toward the ortho and para positions in the sigma complex. The halogen is therefore the usual exception: a deactivating ortho–para director.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'Which treatment converts phenol into benzene?',
      choices: const [
        Choice('a', 'Bromine water'),
        Choice('b', 'Hot alkaline potassium permanganate'),
        Choice('c', 'Distillation with zinc dust'),
        Choice('d', 'Dilute sodium hydroxide at room temperature'),
      ],
      answer: 'c',
      explanation:
          'Heating phenol with zinc dust removes the hydroxy group and leaves benzene. Bromine water substitutes the activated ring and does not strip the oxygen off. Permanganate does not turn phenol into benzene, and cold dilute base only deprotonates the OH to the phenoxide. Zinc dust is the reductive removal of that oxygen.',
    ),
  ],
);

final Exercise arExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'The substitution mechanism and its limits',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'In electrophilic aromatic substitution, which step restores the aromatic ring?',
      choices: const [
        Choice('a', 'Loss of a proton from the carbon that bears the new substituent'),
        Choice('b', 'Formation of the electrophile, before it meets the ring'),
        Choice('c', 'Addition of the electrophile, which itself leaves the ring aromatic'),
        Choice('d', 'A rearrangement of the side chain after the ring has been substituted'),
      ],
      answer: 'a',
      explanation:
          'The electrophile adds to one ring carbon and that carbon becomes tetrahedral. The intermediate is a cyclohexadienyl cation, often called a sigma complex, and it is not aromatic. A base then removes the hydrogen from that same carbon, the pair of electrons returns to the π system, and the ring has six π electrons again. Generating the electrophile happens before this, and the addition step is what temporarily destroys aromaticity.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'The electrophile that nitrates benzene in a mixture of concentrated nitric and sulfuric acids is',
      choices: const [
        Choice('a', 'the nitrate ion'),
        Choice('b', 'sulfur trioxide'),
        Choice('c', 'the nitronium ion, NO2+'),
        Choice('d', 'a bromine cation'),
      ],
      answer: 'c',
      explanation:
          'Sulfuric acid protonates nitric acid, and water leaves to give NO2+. That cation is the species that bonds to the ring. The nitrate ion is what remains after the proton transfers, and it is not the electrophile. Sulfur trioxide is the electrophile of sulphonation, and a halogen cation belongs to halogenation.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'Which statement about Friedel–Crafts reactions of benzene is correct?',
      choices: const [
        Choice('a', 'Acylation rearranges the carbon chain as readily as alkylation does'),
        Choice('b', 'The ketone from acylation activates the ring, so a second acyl group enters easily'),
        Choice('c', 'An acylium ion does not rearrange, and the ketone that forms deactivates the ring'),
        Choice('d', 'Nitrobenzene undergoes acylation more readily than benzene'),
      ],
      answer: 'c',
      explanation:
          'The electrophile in acylation is an acylium ion, RCO+. The charge sits on the carbonyl carbon, which is stabilised by the oxygen, so the alkyl portion does not rearrange the way a primary carbocation does. The product is a ketone. That carbonyl withdraws electron density, so a second substitution is slower than the first and monoacylation is the usual result. A nitro group deactivates the ring so strongly that nitrobenzene does not undergo the reaction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: 'The scheme acylates benzene. The organic product, after water is added, is',
      figure: fcAcylation,
      choices: const [
        Choice('a', 'ethylbenzene'),
        Choice('b', 'acetophenone'),
        Choice('c', '(propan-2-yl)benzene'),
        Choice('d', 'benzoic acid'),
      ],
      answer: 'b',
      explanation:
          'Ethanoyl chloride and aluminium chloride produce the acylium ion CH3CO+. It attacks benzene and the workup frees the ketone. The product is acetophenone, with the two-carbon acyl group intact. There is no hydride shift to turn this into an isopropyl group, and the carbonyl is not reduced to a methylene group by the Lewis acid.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'Which sequence gives (propan-1-yl)benzene rather than (propan-2-yl)benzene?',
      choices: const [
        Choice('a', 'Benzene with 1-chloropropane and aluminium chloride'),
        Choice('b', 'Benzene with propanoyl chloride and aluminium chloride, then zinc amalgam and hydrochloric acid'),
        Choice('c', 'Benzene with 2-chloropropane and aluminium chloride'),
        Choice('d', 'Nitrobenzene with 1-chloropropane and aluminium chloride'),
      ],
      answer: 'b',
      explanation:
          'Direct alkylation with 1-chloropropane rearranges to the isopropyl product, and 2-chloropropane gives that same branched product without needing a shift. Propanoyl chloride acylates benzene to a ketone whose three-carbon chain is still straight. Zinc amalgam and acid then reduce the carbonyl to a methylene group and leave (propan-1-yl)benzene. Nitrobenzene is too deactivated for the alkylation.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'Why is iodobenzene not prepared by stirring benzene with iodine alone?',
      choices: const [
        Choice('a', 'Iodine is a stronger electrophile than chlorine, so the reaction will not stop'),
        Choice('b', 'Iodine substitutes the ring, but only at the meta position'),
        Choice('c', 'The C–I bond is formed and then broken again by the hydrogen iodide produced'),
        Choice('d', 'Iodine adds across a double bond of benzene and leaves a diiodide'),
      ],
      answer: 'c',
      explanation:
          'Iodine is a poor electrophile, and the hydrogen iodide formed in any substitution reduces iodobenzene back to benzene. An oxidising acid is added to remove that hydrogen iodide, and the iodination can then go forward. Iodine is not a stronger electrophile than chlorine, and benzene does not add halogens the way an alkene does.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'The scheme reduces benzene with sodium in liquid ammonia. The organic product is',
      figure: birchBenzene,
      choices: const [
        Choice('a', 'cyclohexane'),
        Choice('b', 'cyclohexene'),
        Choice('c', 'cyclohexa-1,4-diene'),
        Choice('d', 'cyclohexa-1,3-diene'),
      ],
      answer: 'c',
      explanation:
          'Sodium donates an electron, the radical anion is protonated by the alcohol, and a second electron and proton complete the reduction. The two hydrogens add in such a way that the remaining double bonds are not conjugated. The product is cyclohexa-1,4-diene, not the 1,3-diene and not the fully saturated cyclohexane. This is the Birch reduction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'Toluene is reduced with sodium, liquid ammonia, and ethanol. The methyl group in the product is',
      choices: const [
        Choice('a', 'attached to a doubly bonded carbon of cyclohexa-1,4-diene'),
        Choice('b', 'attached to a saturated carbon of cyclohexa-1,4-diene'),
        Choice('c', 'lost, so the product is unsubstituted cyclohexa-1,4-diene'),
        Choice('d', 'oxidised to a carboxylic acid'),
      ],
      answer: 'a',
      explanation:
          'An electron-donating group directs the Birch reduction so that the carbon which bears it is not the one that is protonated. The methyl group of toluene therefore stays on a double bond. The product is 1-methylcyclohexa-1,4-diene. A withdrawing group such as a carboxyl group would have ended on a saturated carbon instead.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'Benzoic acid is reduced under Birch conditions. The carboxyl group in the product is',
      choices: const [
        Choice('a', 'attached to a doubly bonded carbon'),
        Choice('b', 'attached to a saturated carbon of the 1,4-diene'),
        Choice('c', 'lost as carbon dioxide, leaving benzene'),
        Choice('d', 'reduced to a methyl group'),
      ],
      answer: 'b',
      explanation:
          'A carbonyl withdraws electron density, and in the Birch reduction the carbon that carries it is protonated. The carboxyl group of benzoic acid ends on a saturated carbon, and the two remaining double bonds are placed 1,4 to each other. The product is cyclohexa-2,5-diene-1-carboxylic acid. The carboxyl group is not expelled and it is not turned into a methyl group by sodium in ammonia.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'Which statement about pyridine and pyrrole is correct?',
      choices: const [
        Choice('a', 'Both nitrogen lone pairs are part of the aromatic π system'),
        Choice('b', 'Neither ring is aromatic'),
        Choice('c', 'Pyridine uses its nitrogen lone pair in the π system, and pyrrole does not'),
        Choice('d', 'Pyrrole uses its nitrogen lone pair in the π system, and pyridine does not'),
      ],
      answer: 'd',
      explanation:
          'Pyrrole has two double bonds and needs the nitrogen lone pair to reach six π electrons, so that lone pair is part of the aromatic system. Pyridine already has six π electrons from its three double bonds. Its nitrogen lone pair sits in an sp2 orbital in the plane of the ring and is not counted among those six. Both rings are aromatic, but only pyrrole commits the lone pair to the π system.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: 'Ethyne is passed through a red-hot iron tube. The aromatic product is',
      choices: const [
        Choice('a', 'naphthalene'),
        Choice('b', 'benzene'),
        Choice('c', 'toluene'),
        Choice('d', 'phenol'),
      ],
      answer: 'b',
      explanation:
          'Three molecules of ethyne join on the hot metal surface. The cyclic trimer is benzene, C6H6. The reaction does not add the extra carbon of toluene, the second ring of naphthalene, or an oxygen atom. It is one of the classical preparations of benzene from a non-aromatic starting material.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Benzene is treated with an excess of chloromethane and aluminium chloride. More than one methyl group enters the ring because',
      choices: const [
        Choice('a', 'each methyl group activates the ring toward a further substitution'),
        Choice('b', 'each methyl group deactivates the ring, but the electrophile is unusually strong'),
        Choice('c', 'chloromethane rearranges to a methyl cation that can attack only once'),
        Choice('d', 'the product is a sulfonic acid, which is then displaced'),
      ],
      answer: 'a',
      explanation:
          'A methyl group donates electron density, so toluene is more reactive than benzene toward another electrophile. With excess chloromethane the ring is alkylated again, and polyalkylation is the usual limitation of Friedel–Crafts alkylation. The methyl cation does not need to rearrange, and the reaction is not a sulphonation.',
    ),
  ],
);

final Exercise arExercise1Level3 = Exercise(
  id: _l3,
  title: 'Level 3',
  topic: 'Directing effects, side chains, and non-benzenoid rings',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l3,
      number: 1,
      prompt: '4-Nitrotoluene is nitrated further. The major product is',
      choices: const [
        Choice('a', '2,4-dinitrotoluene'),
        Choice('b', '3,4-dinitrotoluene'),
        Choice('c', '1,4-dinitrobenzene, with loss of the methyl group'),
        Choice('d', '2,4,6-trinitrotoluene as the only product of one equivalent of nitric acid'),
      ],
      answer: 'a',
      explanation:
          'The methyl group directs ortho and para, and the nitro group directs meta. In 4-nitrotoluene those instructions agree: the free positions next to the methyl group are meta to the nitro group. The second nitro group therefore enters at C2, and the product is 2,4-dinitrotoluene. The position next to the nitro group and meta to the methyl group is not the favoured site.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 2,
      prompt: '1,3-Dimethylbenzene is nitrated. The major mononitro product has the nitro group',
      choices: const [
        Choice('a', 'between the two methyl groups'),
        Choice('b', 'next to one methyl group but not between them'),
        Choice('c', 'on a methyl carbon, as a nitromethyl group'),
        Choice('d', 'replaced onto one of the methyl groups, which is lost'),
      ],
      answer: 'b',
      explanation:
          'Each methyl group directs ortho and para, so the positions between them and the positions beside only one of them are all activated. The site squeezed between the two methyl groups is sterically hindered, and the electrophile prefers a position that is ortho to one methyl and para to the other. The major product is 1,3-dimethyl-4-nitrobenzene. Nitration under these conditions does not move onto the side chain.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 3,
      prompt: 'Which order of reactivity toward nitration is correct?',
      choices: const [
        Choice('a', 'nitrobenzene > benzene > toluene > phenol'),
        Choice('b', 'toluene > phenol > benzene > nitrobenzene'),
        Choice('c', 'phenol > toluene > benzene > nitrobenzene'),
        Choice('d', 'benzene > phenol > toluene > nitrobenzene'),
      ],
      answer: 'c',
      explanation:
          'A hydroxy group donates strongly by resonance, so phenol is nitrated fastest of these four. A methyl group donates weakly, so toluene is faster than benzene but slower than phenol. A nitro group withdraws electron density and makes nitrobenzene the slowest. The order follows the activating or deactivating character of the substituent already on the ring.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 4,
      prompt: 'Why does chlorine slow electrophilic substitution and still direct ortho and para?',
      choices: const [
        Choice('a', 'Induction withdraws electron density, while a lone pair stabilises the ortho and para sigma complexes'),
        Choice('b', 'Chlorine donates by induction and withdraws by resonance'),
        Choice('c', 'The C–Cl bond breaks during the substitution, and chlorine leaves'),
        Choice('d', 'Chlorine is meta directing, and the ortho and para products are formed by rearrangement'),
      ],
      answer: 'a',
      explanation:
          'Through the sigma bond, chlorine pulls electrons away from the ring, so the ring is less nucleophilic than benzene and the reaction is slower. When the electrophile has added, a lone pair on chlorine can be shared into the ring and that help is felt at the ortho and para positions. Those sigma complexes are therefore preferred even though every position is less reactive than benzene.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 5,
      prompt: 'Which alkylbenzene is not oxidised to benzoic acid by hot alkaline potassium permanganate?',
      choices: const [
        Choice('a', 'Toluene'),
        Choice('b', 'Ethylbenzene'),
        Choice('c', '(Propan-2-yl)benzene'),
        Choice('d', 'tert-Butylbenzene'),
      ],
      answer: 'd',
      explanation:
          'The oxidation needs a hydrogen on the benzylic carbon. Toluene, ethylbenzene, and (propan-2-yl)benzene all have at least one, and each side chain is degraded to a carboxyl group. In tert-butylbenzene the benzylic carbon carries three methyl groups and no hydrogen, so hot permanganate does not convert it into benzoic acid.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 6,
      prompt: 'The scheme uses bromine and light, with no Lewis acid. The organic product is',
      figure: benzylicBromination,
      choices: const [
        Choice('a', '2-bromotoluene'),
        Choice('b', '(bromomethyl)benzene'),
        Choice('c', '3-bromotoluene'),
        Choice('d', '2,4,6-tribromotoluene'),
      ],
      answer: 'b',
      explanation:
          'Light starts a radical chain. A bromine atom abstracts a benzylic hydrogen, because the resulting benzyl radical is resonance-stabilised, and the radical then takes a bromine from Br2. The product is (bromomethyl)benzene. Ring substitution would have required a Lewis acid such as iron(III) bromide, and that ionic reaction gives the ortho and para bromotoluenes instead.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 7,
      prompt: 'Cyclooctatetraene is described as nonaromatic rather than antiaromatic because',
      choices: const [
        Choice('a', 'it has six π electrons'),
        Choice('b', 'it is planar and conjugated'),
        Choice('c', 'it folds into a tub and is not planar'),
        Choice('d', 'it has a 4n+2 count of π electrons'),
      ],
      answer: 'c',
      explanation:
          'A planar cyclooctatetraene would have eight π electrons, a 4n count, and would be antiaromatic. The real molecule avoids that by bending into a tub, so the p orbitals are not aligned around the ring. Without planarity it is neither aromatic nor antiaromatic. It does not have a 4n+2 count.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 8,
      prompt: 'Which of these rings and ions is aromatic?',
      choices: const [
        Choice('a', 'The cyclopropenyl cation'),
        Choice('b', 'The cyclopentadienyl cation'),
        Choice('c', 'Cyclobutadiene'),
        Choice('d', 'Planar cyclooctatetraene'),
      ],
      answer: 'a',
      explanation:
          'The cyclopropenyl cation has one double bond, two π electrons, and an empty p orbital on the third carbon. Two π electrons are a 4n+2 count with n = 0, and the ring is cyclic, planar, and conjugated, so the ion is aromatic. The cyclopentadienyl cation and cyclobutadiene each have four π electrons and are antiaromatic. A planar cyclooctatetraene would have eight π electrons and would be antiaromatic as well.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 9,
      prompt: 'Which species is antiaromatic?',
      choices: const [
        Choice('a', 'Benzene'),
        Choice('b', 'The cyclopentadienyl cation'),
        Choice('c', 'The cyclopentadienyl anion'),
        Choice('d', 'The cycloheptatrienyl cation'),
      ],
      answer: 'b',
      explanation:
          'The cyclopentadienyl cation is a planar, conjugated five-membered ring with four π electrons. Four is a 4n count, so the ion is antiaromatic. The anion of the same ring has six π electrons and is aromatic. Benzene and the cycloheptatrienyl cation (tropylium) each have six π electrons and are aromatic.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 10,
      prompt: 'Furan is aromatic. Which electron count is the reason?',
      choices: const [
        Choice('a', 'Four π electrons from the two double bonds alone'),
        Choice('b', 'Eight π electrons, counting both lone pairs on oxygen'),
        Choice('c', 'Two π electrons, because the ring is like cyclopropenyl'),
        Choice('d', 'Six π electrons: four from the double bonds and one lone pair from oxygen'),
      ],
      answer: 'd',
      explanation:
          'Furan has two double bonds. One lone pair on oxygen occupies a p orbital and joins that π system, giving six electrons. The other lone pair stays in the plane of the ring and is not part of the count. Four electrons would have been antiaromatic, and counting both lone pairs would wrongly give eight. The same six-electron pattern is what makes thiophene aromatic.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 11,
      prompt: 'Pyridine is nitrated under forcing conditions. The nitro group enters',
      choices: const [
        Choice('a', 'at C2, next to the nitrogen'),
        Choice('b', 'at C4, opposite the nitrogen'),
        Choice('c', 'at C3'),
        Choice('d', 'on the nitrogen, giving an N-nitro compound as the aromatic substitution product'),
      ],
      answer: 'c',
      explanation:
          'The nitrogen of pyridine withdraws electron density and the ring is much less reactive than benzene. Attack at C2 or C4 would place the positive charge of the sigma complex on the nitrogen in one resonance form, which is especially unfavourable. Attack at C3 avoids that, so the nitro group enters at C3. The lone pair on nitrogen is not the site of this electrophilic substitution.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 12,
      prompt: '4-Nitrophenol is treated with one equivalent of bromine and a Lewis acid is not required. The bromine enters',
      choices: const [
        Choice('a', 'ortho to the hydroxy group'),
        Choice('b', 'meta to the hydroxy group, because the nitro group controls the reaction'),
        Choice('c', 'on the oxygen, giving a hypobromite and no ring substitution'),
        Choice('d', 'by replacing the nitro group'),
      ],
      answer: 'a',
      explanation:
          'The hydroxy group is a strong activator and directs ortho and para. In 4-nitrophenol the para position is already filled, so bromine enters ortho to the OH. That same carbon is meta to the nitro group, which is the site the nitro group also prefers, and the hydroxy group is what makes the ring reactive enough for bromine without a Lewis acid. The nitro group is not displaced.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 13,
      prompt: 'Sodium benzoate is heated with soda-lime. The organic product is',
      choices: const [
        Choice('a', 'benzene'),
        Choice('b', 'toluene'),
        Choice('c', 'phenol'),
        Choice('d', 'benzoic acid, recovered unchanged'),
      ],
      answer: 'a',
      explanation:
          'Soda-lime removes the carboxyl group of the salt as carbonate. The ring that remains is benzene. The reaction does not add a methyl group, and it does not put an OH on the ring. Heating the salt alone, without the hydroxide mixture, is not this decarboxylation.',
    ),
    singleQuestion(
      exerciseId: _l3,
      number: 14,
      prompt: 'Benzenediazonium chloride is warmed with hypophosphorous acid. The organic product is',
      choices: const [
        Choice('a', 'benzene'),
        Choice('b', 'phenol'),
        Choice('c', 'chlorobenzene'),
        Choice('d', 'aniline'),
      ],
      answer: 'a',
      explanation:
          'Hypophosphorous acid replaces the diazonium group by hydrogen and nitrogen leaves. The product is benzene. Warm water would have given phenol, copper(I) chloride would have given chlorobenzene, and the amino group is not restored. This reduction is a way to remove a nitro or amino group after it has been used to direct other substituents.',
    ),
  ],
);
