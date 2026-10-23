import '../../models/content.dart';
import '../../sketch/amines.dart';

const _l1 = 'am-e1-l1';
const _l2 = 'am-e1-l2';

final Exercise amExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Basicity and the common preparations',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Which order of base strength in water is correct?',
      choices: const [
        Choice('a', 'trimethylamine > dimethylamine > methylamine > ammonia'),
        Choice('b', 'dimethylamine > methylamine > trimethylamine > ammonia'),
        Choice('c', 'ammonia > methylamine > dimethylamine > trimethylamine'),
        Choice('d', 'methylamine > dimethylamine > ammonia > trimethylamine'),
      ],
      answer: 'b',
      explanation:
          'Alkyl groups push electron density toward nitrogen, which by itself would make the tertiary amine the strongest base. In water the conjugate acid must also be solvated. The trimethylammonium ion has only one hydrogen on nitrogen, so it is hydrogen-bonded to water less effectively than the ions from dimethylamine and methylamine. Dimethylamine is therefore the strongest of the methylamines in water, and ammonia, with no alkyl group, is the weakest.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'Which order of base strength in the gas phase is correct?',
      choices: const [
        Choice('a', 'trimethylamine > dimethylamine > methylamine > ammonia'),
        Choice('b', 'dimethylamine > methylamine > trimethylamine > ammonia'),
        Choice('c', 'ammonia > trimethylamine > dimethylamine > methylamine'),
        Choice('d', 'methylamine > ammonia > dimethylamine > trimethylamine'),
      ],
      answer: 'a',
      explanation:
          'In the gas phase there is no water to solvate the ammonium ion, so only the electron donation of the alkyl groups remains. Each methyl group makes the lone pair more available and stabilises the cation that forms when the base is protonated. Trimethylamine is the strongest gas-phase base of this set, then dimethylamine, then methylamine, and ammonia is the weakest.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'Which compound is the strongest base in water?',
      choices: const [
        Choice('a', 'Aniline'),
        Choice('b', '4-Nitroaniline'),
        Choice('c', 'Ammonia'),
        Choice('d', 'Ethanamine'),
      ],
      answer: 'd',
      explanation:
          'Ethanamine is an aliphatic amine. The ethyl group donates electron density, and the lone pair stays on nitrogen, so it is a stronger base than ammonia. Aniline is much weaker because its lone pair is delocalised into the ring. A para nitro group withdraws still more density, so 4-nitroaniline is weaker than aniline. Ethanamine is the strongest of the four.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Which compound is the weakest base in water?',
      choices: const [
        Choice('a', '4-Methoxyaniline'),
        Choice('b', '4-Methylaniline'),
        Choice('c', '4-Nitroaniline'),
        Choice('d', 'Aniline'),
      ],
      answer: 'c',
      explanation:
          'A para methoxy group and a para methyl group donate electron density into the ring and make the lone pair on nitrogen more available, so both of those anilines are stronger bases than aniline. A para nitro group withdraws electron density by resonance and by induction. 4-Nitroaniline is therefore much weaker than aniline, and it is the weakest of the four.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'The scheme starts from the phthalimide salt and 1-bromopropane. The amine is',
      figure: gabrielAmine,
      choices: const [
        Choice('a', 'propan-1-amine'),
        Choice('b', 'N-propylpropan-1-amine'),
        Choice('c', 'aniline'),
        Choice('d', 'propan-2-amine'),
      ],
      answer: 'a',
      explanation:
          'The phthalimide anion is alkylated once, on nitrogen, by the primary alkyl bromide. Hydrazine then releases the alkyl group as the free amine. 1-Bromopropane therefore gives propan-1-amine, a primary amine with the three-carbon chain intact. The nitrogen is not alkylated a second time, an aryl group is not introduced, and the chain is not branched.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Nitrobenzene is heated with tin and hydrochloric acid. The organic product is',
      choices: const [
        Choice('a', 'phenylmethanamine'),
        Choice('b', 'aniline'),
        Choice('c', 'benzene'),
        Choice('d', 'N-phenylhydroxylamine, isolated as the end product'),
      ],
      answer: 'b',
      explanation:
          'Tin and acid reduce the nitro group all the way to an amino group. Nitrobenzene becomes aniline. The ring carbon count is unchanged, so the product is not a side-chain amine. Stopping at the hydroxylamine needs a milder, incomplete reduction. Removing the nitrogen entirely is not what this reagent does.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'Ethanenitrile is treated with lithium aluminium hydride, and then water is added. The product is',
      choices: const [
        Choice('a', 'methanamine'),
        Choice('b', 'propan-1-amine'),
        Choice('c', 'ethanamine'),
        Choice('d', 'ethanenitrile, because a hydride does not reduce a nitrile'),
      ],
      answer: 'c',
      explanation:
          'Lithium aluminium hydride adds hydrogen to the carbon–nitrogen triple bond and the workup leaves a primary amine. The carbon count is unchanged, so ethanenitrile, which has two carbons, becomes ethanamine. Methanamine would require loss of a carbon. A one-carbon-longer amine would require a different starting nitrile.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Ethanamide is warmed with bromine and aqueous potassium hydroxide. The organic product is',
      choices: const [
        Choice('a', 'ethanamine'),
        Choice('b', 'methanamine'),
        Choice('c', 'ethanenitrile'),
        Choice('d', 'ethanoic acid'),
      ],
      answer: 'b',
      explanation:
          'Bromine and base rearrange the amide. The alkyl group moves from carbon onto nitrogen and the carbonyl leaves, so the amine has one fewer carbon than the amide. Ethanamide becomes methanamine. Lithium aluminium hydride would have kept both carbons and given ethanamine. Hydrolysis of the amide would have given the carboxylic acid, not this rearrangement.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'A primary amine is shaken with benzenesulfonyl chloride and then with aqueous potassium hydroxide. What is observed?',
      choices: const [
        Choice('a', 'No new organic product; the amine does not react'),
        Choice('b', 'A sulfonamide that stays insoluble in the alkali'),
        Choice('c', 'Immediate evolution of nitrogen, as with nitrous acid'),
        Choice('d', 'A sulfonamide that dissolves in the alkali'),
      ],
      answer: 'd',
      explanation:
          'A primary amine replaces one chlorine of the sulfonyl chloride and still has a hydrogen on the sulfonamide nitrogen. That hydrogen is acidic enough for the product to dissolve in aqueous potassium hydroxide. A secondary amine forms a sulfonamide with no such hydrogen, so that product stays insoluble. A tertiary amine does not form a sulfonamide at all. Nitrogen gas is the nitrous-acid test, not this one.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'The scheme uses chloroform and base on a primary amine. The product is',
      figure: carbylamine,
      choices: const [
        Choice('a', 'ethyl isocyanide'),
        Choice('b', 'ethanamine, recovered unchanged'),
        Choice('c', 'diethylamine'),
        Choice('d', 'ethanenitrile'),
      ],
      answer: 'a',
      explanation:
          'Chloroform and base convert a primary amine into an isocyanide. The nitrogen of ethanamine stays attached to the ethyl group, and the new carbon from chloroform becomes the terminal carbon of the NC group, triple-bonded to that nitrogen. The product is ethyl isocyanide, which has a strong unpleasant smell. A nitrile would have the carbon of the CN group attached to the ethyl group instead. Secondary and tertiary amines do not give this product.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'Aniline is treated with sodium nitrite and hydrochloric acid at 0–5 °C. The product is',
      choices: const [
        Choice('a', 'phenol'),
        Choice('b', 'benzene'),
        Choice('c', 'benzenediazonium chloride'),
        Choice('d', 'N-phenylhydroxylamine'),
      ],
      answer: 'c',
      explanation:
          'Nitrous acid, made from sodium nitrite and acid, diazotises a primary aromatic amine in the cold. The salt is stable enough to keep at 0–5 °C, so the product is benzenediazonium chloride. Warming that salt in water would replace the diazonium group by OH and give phenol, with loss of nitrogen. A primary aliphatic amine would have lost nitrogen at once and would not have left a usable diazonium salt.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'The scheme replaces a diazonium group. The organic product is',
      figure: sandmeyer,
      choices: const [
        Choice('a', 'phenol'),
        Choice('b', 'chlorobenzene'),
        Choice('c', 'benzonitrile'),
        Choice('d', 'aniline'),
      ],
      answer: 'b',
      explanation:
          'Copper(I) chloride replaces the diazonium group by chlorine and nitrogen leaves. The product is chlorobenzene. This is the Sandmeyer reaction. Copper(I) cyanide would have given benzonitrile, and hot water would have given phenol. The amino group is not restored.',
    ),
  ],
);

final Exercise amExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Tests, diazonium chemistry, and substitution on aniline',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'Why is trimethylamine a weaker base in water than dimethylamine?',
      choices: const [
        Choice('a', 'The trimethylammonium ion is hydrogen-bonded to fewer water molecules'),
        Choice('b', 'Methyl groups withdraw electrons, and three of them withdraw the most'),
        Choice('c', 'Trimethylamine has no lone pair on nitrogen'),
        Choice('d', 'Water cannot protonate a tertiary amine'),
      ],
      answer: 'a',
      explanation:
          'Methyl groups donate electrons, so on that count the tertiary amine should be the strongest base. In water the conjugate acid of dimethylamine has two hydrogens on nitrogen and is better solvated than the trimethylammonium ion, which has only one. That solvation reverses the pair: dimethylamine is the stronger base in water. The tertiary amine does still have a lone pair, and water does protonate it.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'Why is aniline a much weaker base than ethanamine?',
      choices: const [
        Choice('a', 'The nitrogen in aniline is sp3, while the nitrogen in ethanamine is sp2'),
        Choice('b', 'Aniline has no lone pair'),
        Choice('c', 'The lone pair of aniline is delocalised into the benzene ring'),
        Choice('d', 'The ethyl group of ethanamine withdraws electrons'),
      ],
      answer: 'c',
      explanation:
          'In aniline the lone pair overlaps with the π system of the ring, so it is less available to a proton. Protonation also destroys that delocalisation. In ethanamine the lone pair is localised on nitrogen and the ethyl group donates electron density. Both nitrogens in these two amines are attached by single bonds; the difference is the conjugation in aniline, not a missing lone pair.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'Why is 4-nitroaniline a weaker base than aniline?',
      choices: const [
        Choice('a', 'The nitro group donates electrons into the ring by resonance'),
        Choice('b', 'The nitro group withdraws electron density from the amino group'),
        Choice('c', '4-Nitroaniline is an aliphatic amine'),
        Choice('d', 'The nitro group is protonated in preference to the amino group under ordinary conditions'),
      ],
      answer: 'b',
      explanation:
          'The nitro group pulls electron density out of the ring both by induction and by resonance. That withdrawal reaches the amino group, so the lone pair is held more tightly and the anilinium ion is less stable. 4-Nitroaniline is therefore a weaker base than aniline. A methoxy or methyl group at the same position would have donated density and strengthened the base.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: 'The same three methylamines are compared with no solvent present. The order of base strength is',
      choices: const [
        Choice('a', 'dimethylamine > methylamine > trimethylamine'),
        Choice('b', 'methylamine > dimethylamine > trimethylamine'),
        Choice('c', 'trimethylamine > methylamine > dimethylamine'),
        Choice('d', 'trimethylamine > dimethylamine > methylamine'),
      ],
      answer: 'd',
      explanation:
          'Without water, solvation of the ammonium ion no longer decides the order. Each additional methyl group donates electron density and stabilises the protonated amine. Trimethylamine is the strongest base, dimethylamine is next, and methylamine is the weakest of the three. The aqueous order, in which dimethylamine leads, is the one that changes when the solvent is removed.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'Which halide gives a primary amine when the phthalimide salt is alkylated and then treated with hydrazine?',
      choices: const [
        Choice('a', '1-Bromobutane'),
        Choice('b', 'Bromobenzene'),
        Choice('c', '2-Bromo-2-methylpropane'),
        Choice('d', 'Iodobenzene'),
      ],
      answer: 'a',
      explanation:
          'The phthalimide anion displaces the halide by an SN2 reaction, so the carbon must be an unhindered primary alkyl carbon. 1-Bromobutane qualifies and the cleavage step gives butan-1-amine. An aryl halide does not undergo that substitution. A tertiary alkyl halide is too hindered and tends to eliminate instead of giving the substitution product.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'Benzonitrile is reduced with lithium aluminium hydride, and water is added. The product is',
      choices: const [
        Choice('a', 'aniline'),
        Choice('b', 'benzaldehyde'),
        Choice('c', 'phenylmethanamine'),
        Choice('d', 'benzonitrile, recovered, because the reagent stops at the aldehyde'),
      ],
      answer: 'c',
      explanation:
          'Lithium aluminium hydride reduces the nitrile to a primary amine and does not remove the carbon of the CN group. Benzonitrile becomes phenylmethanamine. Aniline would require the nitrile carbon to be lost, which is what the bromamide reaction does to benzamide, not what this hydride does to the nitrile. A tin(II) reduction in acid is the route that stops a nitrile at the aldehyde.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'Ethanamide is reduced in one experiment with lithium aluminium hydride and, separately, rearranged with bromine and potassium hydroxide. The two amines are',
      choices: const [
        Choice('a', 'ethanamine from both reactions'),
        Choice('b', 'ethanamine from the hydride, and methanamine from bromine and base'),
        Choice('c', 'methanamine from both reactions'),
        Choice('d', 'methanamine from the hydride, and ethanamine from bromine and base'),
      ],
      answer: 'b',
      explanation:
          'The hydride reduces the carbonyl of the amide to a methylene group and leaves the C–N bond in place, so both carbons of ethanamide remain and the product is ethanamine. Bromine and base move the methyl group onto nitrogen and expel the carbonyl carbon, so that reaction gives methanamine. The two reagents do not give the same amine.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'The scheme combines an aldehyde with a primary amine and a selective hydride. The product is',
      figure: reductiveAmination,
      choices: const [
        Choice('a', 'N-methylethanamine'),
        Choice('b', 'ethanamine'),
        Choice('c', 'N,N-dimethylethanamine'),
        Choice('d', 'ethanamide'),
      ],
      answer: 'a',
      explanation:
          'Methylamine adds to ethanal and water is lost to give an imine. Sodium cyanoborohydride reduces that imine. The ethyl chain comes from the aldehyde and the N-methyl group comes from the amine, so the product is the secondary amine N-methylethanamine. A second methylation would have been needed for the tertiary amine. The carbonyl is not oxidised to an amide.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'Which reagent converts nitrobenzene into aniline?',
      choices: const [
        Choice('a', 'Sodium borohydride in ethanol'),
        Choice('b', 'Lithium aluminium hydride'),
        Choice('c', 'DIBAL-H at low temperature'),
        Choice('d', 'Tin and hydrochloric acid'),
      ],
      answer: 'd',
      explanation:
          'Tin and hydrochloric acid reduce an aromatic nitro group to the amine, and the workup frees aniline. Sodium borohydride and lithium aluminium hydride do not perform that reduction under ordinary conditions. Cold DIBAL-H is used to stop an ester or a nitrile at an aldehyde, not to turn a nitro group into an amino group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'Diethylamine is treated with benzenesulfonyl chloride and aqueous potassium hydroxide. The result is',
      choices: const [
        Choice('a', 'a sulfonamide that dissolves in the alkali'),
        Choice('b', 'ethyl isocyanide'),
        Choice('c', 'a sulfonamide that does not dissolve in the alkali'),
        Choice('d', 'nitrogen gas and ethanol'),
      ],
      answer: 'c',
      explanation:
          'A secondary amine still has one hydrogen on nitrogen, so it forms a sulfonamide. That product has no hydrogen left on nitrogen and does not dissolve in aqueous potassium hydroxide. A primary amine’s sulfonamide does dissolve. The isocyanide test needs chloroform, and nitrogen gas is the nitrous-acid reaction of a primary aliphatic amine.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: 'Triethylamine is shaken with benzenesulfonyl chloride and aqueous potassium hydroxide. What happens to the amine?',
      choices: const [
        Choice('a', 'It forms a sulfonamide that dissolves in the alkali'),
        Choice('b', 'It does not form a sulfonamide'),
        Choice('c', 'It forms an N-nitrosoamine'),
        Choice('d', 'It forms ethyl isocyanide'),
      ],
      answer: 'b',
      explanation:
          'A tertiary amine has no hydrogen on nitrogen, so it cannot be acylated by the sulfonyl chloride. No sulfonamide is formed, and there is nothing for the alkali to dissolve as a salt of that sulfonamide. N-Nitrosation and the isocyanide test are different reagents. The tertiary amine is the one that fails the Hinsberg reaction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Ethanamine is treated with sodium nitrite and hydrochloric acid. The result is',
      choices: const [
        Choice('a', 'nitrogen is evolved and ethanol is formed'),
        Choice('b', 'a stable ethenediazonium salt that can be kept at 0 °C'),
        Choice('c', 'N-nitrosoethanamine as a stable yellow oil'),
        Choice('d', 'ethanamide'),
      ],
      answer: 'a',
      explanation:
          'A primary aliphatic amine and nitrous acid form a diazonium ion that loses nitrogen at once. The ethyl cation is captured by water, so ethanol is the substitution product and nitrogen gas is evolved. Unlike aniline, ethanamine does not leave a diazonium salt that can be stored in ice. A secondary amine would have stopped at an N-nitrosoamine and would not have released nitrogen.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'N,N-Dimethylaniline is treated with sodium nitrite and hydrochloric acid. The organic product is',
      choices: const [
        Choice('a', 'benzenediazonium chloride'),
        Choice('b', 'phenol, with evolution of nitrogen'),
        Choice('c', 'N-nitroso-N-methylaniline'),
        Choice('d', '4-nitroso-N,N-dimethylaniline'),
      ],
      answer: 'd',
      explanation:
          'The nitrogen of N,N-dimethylaniline has no hydrogen, so the compound cannot be diazotised and it cannot form an N-nitrosoamine. The dimethylamino group activates the para position, and the nitrosonium ion substitutes there. The product is 4-nitroso-N,N-dimethylaniline. A primary aromatic amine would have given the diazonium salt instead.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt: 'Benzenediazonium chloride is warmed with copper(I) cyanide. The organic product is',
      choices: const [
        Choice('a', 'chlorobenzene'),
        Choice('b', 'benzonitrile'),
        Choice('c', 'phenol'),
        Choice('d', 'aniline'),
      ],
      answer: 'b',
      explanation:
          'Copper(I) cyanide replaces the diazonium group by a cyano group. The product is benzonitrile, and nitrogen is lost. Copper(I) chloride would have given chlorobenzene, and hot water alone would have given phenol. The cyano carbon is a new ring substituent; it is not an amino group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'The scheme couples a diazonium salt with a phenol. The organic product is',
      figure: azoCoupling,
      choices: const [
        Choice('a', '4-(phenyldiazenyl)phenol'),
        Choice('b', 'azobenzene, with no hydroxy group'),
        Choice('c', '3-(phenyldiazenyl)phenol'),
        Choice('d', 'no coupled product, because a benzene ring does not react with a diazonium ion'),
      ],
      answer: 'a',
      explanation:
          'In mild base the phenol is deprotonated and the phenoxide is activated at the para position. The diazonium ion is the electrophile and attaches there, giving 4-(phenyldiazenyl)phenol. The hydroxy group remains. Benzene itself is not activated enough to couple, but phenol is. The meta isomer is not the directed product when the para position is free.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: 'The scheme nitrates a protected aniline. The major product of this step is',
      figure: acetanilideNitration,
      choices: const [
        Choice('a', '3-nitroacetanilide'),
        Choice('b', 'nitrobenzene'),
        Choice('c', '4-nitroacetanilide'),
        Choice('d', '2,4,6-trinitroaniline'),
      ],
      answer: 'c',
      explanation:
          'The acetamido group still donates electron density and directs to the ortho and para positions, and the para product predominates. Nitric acid therefore converts acetanilide into 4-nitroacetanilide. The amide is much less basic than aniline, so it is not fully protonated to a meta-directing cation the way aniline is in mixed acid. Hydrolysis of this para product would then give 4-nitroaniline.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 17,
      prompt: 'Aniline is treated with bromine water. The organic product is',
      choices: const [
        Choice('a', '4-bromoaniline only'),
        Choice('b', '2,4,6-tribromoaniline'),
        Choice('c', 'bromobenzene'),
        Choice('d', 'no substitution, because a Lewis acid is required'),
      ],
      answer: 'b',
      explanation:
          'The amino group activates the ring so strongly that all three free ortho and para positions are brominated by bromine water, with no Lewis acid. The product is 2,4,6-tribromoaniline, which separates as a pale solid. A single para bromide is what acetanilide gives, because the amide is less activating. The amino group is not replaced by bromine under these conditions.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 18,
      prompt: 'Aniline is treated with chloromethane and aluminium chloride. The result on the ring is',
      choices: const [
        Choice('a', '4-methylaniline as the major product'),
        Choice('b', '2,4,6-trimethylaniline'),
        Choice('c', 'N-methylaniline only, with the ring unchanged, by a clean Friedel–Crafts path'),
        Choice('d', 'no ring alkylation, because the amino group binds the aluminium chloride'),
      ],
      answer: 'd',
      explanation:
          'The lone pair of aniline coordinates to aluminium chloride. The salt that forms deactivates the ring, so the Friedel–Crafts alkylation does not take place. Neither a para methyl product nor a trimethyl product is obtained by this route. Protecting the amine as an amide lowers the basicity, but the usual way to put a carbon group on the ring is not this mixture of the free amine and the Lewis acid.',
    ),
  ],
);
