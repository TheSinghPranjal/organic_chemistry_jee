import '../../models/content.dart';
import '../../sketch/carboxylic.dart';

const _l1 = 'ca-e1-l1';
const _l2 = 'ca-e1-l2';

final Exercise caExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Acidity, preparation, and the common derivatives',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Which order of acid strength is correct?',
      choices: const [
        Choice('a', 'trifluoroethanoic acid > trichloroethanoic acid > methanoic acid > ethanoic acid'),
        Choice('b', 'ethanoic acid > methanoic acid > trichloroethanoic acid > trifluoroethanoic acid'),
        Choice('c', 'trichloroethanoic acid > trifluoroethanoic acid > ethanoic acid > methanoic acid'),
        Choice('d', 'methanoic acid > trifluoroethanoic acid > ethanoic acid > trichloroethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Fluorine withdraws electrons more strongly than chlorine, so three fluorines make the carboxylate more stable than three chlorines do. Either trihalo acid is far stronger than an unsubstituted acid. Between the two unsubstituted acids, the methyl group of ethanoic acid pushes electron density toward the carboxylate and weakens the acid, so methanoic acid is stronger than ethanoic acid. The order begins with trifluoroethanoic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'Which compound releases carbon dioxide from aqueous sodium hydrogencarbonate?',
      choices: const [
        Choice('a', 'Benzoic acid'),
        Choice('b', 'Phenol'),
        Choice('c', 'Ethanol'),
        Choice('d', 'Propanone'),
      ],
      answer: 'a',
      explanation:
          'A carboxylic acid is strong enough to protonate hydrogencarbonate, whose conjugate acid is carbonic acid, and carbon dioxide is evolved. Benzoic acid does this. Phenol is a weaker acid than carbonic acid, so it dissolves in sodium hydroxide but does not release carbon dioxide here. Ethanol and propanone are not acidic enough for either test.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'Which order of acid strength is correct?',
      choices: const [
        Choice('a', '4-nitrobenzoic acid > benzoic acid > 4-methylbenzoic acid'),
        Choice('b', '4-methylbenzoic acid > benzoic acid > 4-nitrobenzoic acid'),
        Choice('c', 'benzoic acid > 4-nitrobenzoic acid > 4-methylbenzoic acid'),
        Choice('d', '4-methylbenzoic acid > 4-nitrobenzoic acid > benzoic acid'),
      ],
      answer: 'a',
      explanation:
          'A para nitro group pulls electron density out of the ring and out of the carboxylate, so 4-nitrobenzoic acid is stronger than benzoic acid. A para methyl group donates electron density and makes 4-methylbenzoic acid weaker than benzoic acid. The nitro acid is therefore the strongest of the three, and the methyl acid is the weakest.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Bromoethane is converted into a Grignard reagent, carbon dioxide is added, and then dilute acid. The carboxylic acid is',
      choices: const [
        Choice('a', 'propanoic acid'),
        Choice('b', 'ethanoic acid'),
        Choice('c', 'butanoic acid'),
        Choice('d', '2-methylpropanoic acid'),
      ],
      answer: 'a',
      explanation:
          'The ethyl carbon of the Grignard reagent bonds to the carbon of carbon dioxide. Acid workup protonates the salt. The new chain has the two carbons of the ethyl group plus the carboxyl carbon, so the acid is propanoic acid. A methyl Grignard reagent would have given ethanoic acid. Extending the chain through a nitrile from 1-bromopropane would have given butanoic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'Which order of reactivity toward water is correct?',
      choices: const [
        Choice('a', 'ethanoyl chloride > ethanoic anhydride > ethyl ethanoate > ethanamide'),
        Choice('b', 'ethanamide > ethyl ethanoate > ethanoic anhydride > ethanoyl chloride'),
        Choice('c', 'ethyl ethanoate > ethanoyl chloride > ethanamide > ethanoic anhydride'),
        Choice('d', 'ethanoic anhydride > ethanamide > ethanoyl chloride > ethyl ethanoate'),
      ],
      answer: 'a',
      explanation:
          'Nucleophilic acyl substitution is fastest when the carbonyl is most electrophilic and the leaving group is most willing to leave. Chloride leaves most readily and donates least by resonance, so the acid chloride is the most reactive. A carboxylate leaving group puts the anhydride next. An alkoxide leaves less readily, and the amide is slowest because nitrogen donates strongly into the carbonyl and amide ion is a poor leaving group.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Ethanoyl chloride is added to an excess of ammonia. The organic product is',
      choices: const [
        Choice('a', 'ethanamide'),
        Choice('b', 'ethanamine'),
        Choice('c', 'ethanoic anhydride'),
        Choice('d', 'ethyl ethanoate'),
      ],
      answer: 'a',
      explanation:
          'Ammonia adds to the carbonyl of the acid chloride and chloride leaves. A second molecule of ammonia takes up the hydrogen chloride. The organic product is ethanamide. The amine with one fewer carbon would have required bromine and base on the amide afterwards. An alcohol would have been needed to make the ester, and a carboxylate salt to make the anhydride.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'Ethanoic acid is heated with ethanol and a few drops of concentrated sulfuric acid. The organic product is',
      choices: const [
        Choice('a', 'ethyl ethanoate'),
        Choice('b', 'ethanoyl chloride'),
        Choice('c', 'ethanoic anhydride'),
        Choice('d', 'ethanamide'),
      ],
      answer: 'a',
      explanation:
          'Acid protonates the carbonyl of the carboxylic acid, ethanol adds, and water leaves. The product of this Fischer esterification is ethyl ethanoate. The reaction is reversible, and the sulfuric acid is a catalyst, not a source of chlorine or nitrogen. An acid chloride or an amide needs a different reagent.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Propanoic acid is treated with bromine and red phosphorus. The organic product is',
      choices: const [
        Choice('a', '2-bromopropanoic acid'),
        Choice('b', '3-bromopropanoic acid'),
        Choice('c', 'propanoyl bromide, with no bromine on carbon'),
        Choice('d', 'bromoethane'),
      ],
      answer: 'a',
      explanation:
          'Phosphorus and bromine convert the acid into an acyl bromide, which can enolise. Bromine then substitutes the α-hydrogen, and exchange with more acid leaves the α-bromo acid. The product is 2-bromopropanoic acid. The bromine does not go to the end of the chain. Loss of the carboxyl group would have required a silver salt, not this mixture.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'Sodium ethanoate is heated with soda-lime. The organic product is',
      choices: const [
        Choice('a', 'methane'),
        Choice('b', 'ethane'),
        Choice('c', 'ethene'),
        Choice('d', 'ethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Soda-lime is sodium hydroxide with calcium oxide. Heat removes the carboxyl group of the salt as carbonate and leaves the hydrocarbon with one fewer carbon. Sodium ethanoate therefore gives methane. Ethane is the coupling product of electrolysis, not of soda-lime. The acid itself is not regenerated.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'Propanoic acid is treated with lithium aluminium hydride, and then water is added. The organic product is',
      choices: const [
        Choice('a', 'propan-1-ol'),
        Choice('b', 'propanal'),
        Choice('c', 'propane'),
        Choice('d', 'propanoic acid, recovered unchanged, as with sodium borohydride'),
      ],
      answer: 'a',
      explanation:
          'Lithium aluminium hydride delivers hydride to the carboxyl carbon and the workup leaves a primary alcohol. Propanoic acid becomes propan-1-ol. Sodium borohydride is not strong enough to reduce a carboxylic acid, so that comparison in the last option describes borohydride, not lithium aluminium hydride. The aldehyde can be isolated from an ester with a bulky hydride at low temperature, not from the acid with this reagent.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'Ethanamide is warmed with bromine and aqueous potassium hydroxide. The organic product is',
      choices: const [
        Choice('a', 'methanamine'),
        Choice('b', 'ethanamine'),
        Choice('c', 'ethanenitrile'),
        Choice('d', 'ethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Bromine and base first N-brominate the amide. Rearrangement then moves the alkyl group from carbon onto nitrogen, and the carbonyl leaves as carbonate. The amine has one fewer carbon than the amide, so ethanamide becomes methanamine. Lithium aluminium hydride would have kept both carbons and given ethanamine. Simple hydrolysis would have given the carboxylic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'The scheme uses two molecules of an ester and an alkoxide. The product is',
      figure: claisenEster,
      choices: const [
        Choice('a', 'ethyl 3-oxobutanoate'),
        Choice('b', 'ethyl ethanoate, recovered unchanged'),
        Choice('c', 'butane'),
        Choice('d', 'ethanoic anhydride'),
      ],
      answer: 'a',
      explanation:
          'Ethoxide removes an α-hydrogen from one molecule of ethyl ethanoate. That enolate adds to the carbonyl of a second molecule, and ethoxide leaves. The β-keto ester is acidic enough to be deprotonated, which pulls the equilibrium forward. After acid workup the product is ethyl 3-oxobutanoate. An ester with no α-hydrogen could not have played the role of the enolate.',
    ),
  ],
);

final Exercise caExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Mechanisms, degradations, and selective reductions',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'The ethanol in the scheme is labelled with 18O. In the ester, the labelled oxygen is',
      figure: fischerLabel,
      choices: const [
        Choice('a', 'the oxygen that bridges the acyl group to the ethyl group'),
        Choice('b', 'the oxygen of the carbonyl, with the bridging oxygen unlabelled'),
        Choice('c', 'lost in the water, so the ester contains no 18O'),
        Choice('d', 'shared equally by both oxygens of the ester'),
      ],
      answer: 'a',
      explanation:
          'Acid protonates the carbonyl of the carboxylic acid, and the alcohol oxygen is the nucleophile that bonds to that carbon. The OH that was part of the acid leaves as water, so that oxygen is not the one in the ester. The bridging oxygen of ethyl ethanoate is the oxygen that came from the labelled ethanol. The carbonyl oxygen of the ester is the original carbonyl oxygen of the acid.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'Ethyl benzoate is heated with aqueous sodium hydroxide. The products are',
      choices: const [
        Choice('a', 'sodium benzoate and ethanol'),
        Choice('b', 'benzoic acid and ethene'),
        Choice('c', 'benzaldehyde and ethanol'),
        Choice('d', 'ethyl benzoate, because esters are not hydrolysed by base'),
      ],
      answer: 'a',
      explanation:
          'Hydroxide adds to the ester carbonyl and ethoxide leaves. The carboxylic acid that is formed is immediately deprotonated, so the observed products are sodium benzoate and ethanol. That last proton transfer makes the hydrolysis effectively irreversible. The cleavage is between the carbonyl carbon and the alkoxy oxygen. A hydride reagent would have been needed to reach the aldehyde or the alcohol from the acyl group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'The scheme uses one equivalent of a bulky hydride at low temperature. The carbonyl product is',
      figure: dibalEster,
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', 'phenylmethanol'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'methylbenzene'),
      ],
      answer: 'a',
      explanation:
          'One equivalent of DIBAL-H at low temperature adds once to the ester and, after water is added, the intermediate collapses to the aldehyde. Methyl benzoate therefore gives benzaldehyde, together with methanol. Lithium aluminium hydride would have continued to phenylmethanol. The ester is not simply hydrolysed to the acid by this hydride.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: 'The scheme places a halogen next to a carboxyl group. The product is',
      figure: hvzAcid,
      choices: const [
        Choice('a', '2-bromopropanoic acid'),
        Choice('b', '3-bromopropanoic acid'),
        Choice('c', 'bromoethane'),
        Choice('d', 'propanoyl bromide only, with the chain unsubstituted'),
      ],
      answer: 'a',
      explanation:
          'Bromine and phosphorus first make the acyl bromide. Only that derivative enolises readily, and bromine substitutes the α-position. Exchange back to the carboxylic acid leaves 2-bromopropanoic acid. The end carbon of the chain is not the reactive site. Removing the carboxyl group entirely is the Hunsdiecker reaction of a silver salt, not this one.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'Propanedioic acid is heated. The organic product is',
      choices: const [
        Choice('a', 'ethanoic acid'),
        Choice('b', 'propane'),
        Choice('c', 'propanoic acid'),
        Choice('d', 'propanedioic acid, because a carboxyl group is lost only with soda-lime'),
      ],
      answer: 'a',
      explanation:
          'A carboxylic acid that has a second carbonyl on the neighbouring carbon can lose carbon dioxide through a cyclic transition state. Propanedioic acid is that kind of diacid. Heating gives ethanoic acid and carbon dioxide. A simple acid such as ethanoic acid or propanoic acid does not decarboxylate on heating alone and does need soda-lime. The hydrocarbon would require the salt and soda-lime, and then a further loss of the remaining carboxyl group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'Aqueous sodium ethanoate is electrolysed. The hydrocarbon formed at the anode is',
      choices: const [
        Choice('a', 'ethane'),
        Choice('b', 'methane'),
        Choice('c', 'ethene'),
        Choice('d', 'butane'),
      ],
      answer: 'a',
      explanation:
          'At the anode the carboxylate loses an electron and then carbon dioxide. Two methyl radicals couple. The hydrocarbon is ethane. Methane is what soda-lime produces from the same salt, with no coupling. Butane would require the propanoate salt, whose ethyl radicals couple. The cathode of this electrolysis liberates hydrogen, not the hydrocarbon.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'The scheme treats a silver salt with bromine. The organic product is',
      figure: hunsdiecker,
      choices: const [
        Choice('a', 'bromobenzene'),
        Choice('b', '(bromomethyl)benzene'),
        Choice('c', '2-bromobenzoic acid'),
        Choice('d', 'benzoyl bromide'),
      ],
      answer: 'a',
      explanation:
          'The silver carboxylate and bromine form an acyl hypobromite, which breaks homolytically. Carbon dioxide leaves and the aryl radical takes the bromine. Silver benzoate therefore gives bromobenzene. The carboxyl carbon is lost, so the product is not a substituted benzoic acid and not a side-chain bromide. An α-bromo acid would have required the Hell–Volhard–Zelinsky conditions, and benzoic acid has no α-hydrogen for that reaction anyway.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'Benzoyl azide is heated, and the intermediate is then treated with water. The final organic product is',
      choices: const [
        Choice('a', 'aniline'),
        Choice('b', 'phenylmethanamine'),
        Choice('c', 'benzamide'),
        Choice('d', 'benzonitrile'),
      ],
      answer: 'a',
      explanation:
          'Heat drives nitrogen out of the acyl azide and the phenyl group moves onto the nitrogen. The intermediate is phenyl isocyanate. Water adds to that isocyanate and the adduct loses carbon dioxide, leaving aniline. The amine has one fewer carbon than the acyl azide. Lithium aluminium hydride on benzamide would have kept the carbonyl carbon and given phenylmethanamine. This thermal rearrangement of an acyl azide is the Curtius reaction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'Benzoic acid is treated with hydrazoic acid and sulfuric acid. The organic product is',
      choices: const [
        Choice('a', 'aniline'),
        Choice('b', 'benzamide'),
        Choice('c', 'phenylmethanamine'),
        Choice('d', 'benzonitrile'),
      ],
      answer: 'a',
      explanation:
          'Hydrazoic acid and strong acid convert the carboxylic acid into an amine with one fewer carbon. The phenyl group migrates onto nitrogen and carbon dioxide is lost, so benzoic acid becomes aniline. This is the Schmidt reaction of a carboxylic acid. It does not stop at the amide, and it does not keep the carboxyl carbon the way a hydride reduction of the amide would.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt:
          'Ethyl benzoate, which has no α-hydrogen, is treated with ethyl ethanoate and sodium ethoxide. The condensation product is',
      choices: const [
        Choice('a', 'ethyl 3-oxo-3-phenylpropanoate'),
        Choice('b', 'ethyl 3-oxobutanoate only, with ethyl benzoate recovered as the sole fate'),
        Choice('c', 'benzaldehyde'),
        Choice('d', 'aniline'),
      ],
      answer: 'a',
      explanation:
          'Only ethyl ethanoate can form the enolate. Ethyl benzoate, with no α-hydrogen, can still be the electrophile. The enolate adds to the benzoate carbonyl and ethoxide leaves. The product is the β-keto ester ethyl 3-oxo-3-phenylpropanoate. Self-condensation of ethyl ethanoate can compete, but the crossed product is the one this pair is used to make. Neither an aldehyde nor an amine is formed.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: 'Which ester cannot undergo a Claisen self-condensation?',
      choices: const [
        Choice('a', 'Ethyl benzoate'),
        Choice('b', 'Ethyl ethanoate'),
        Choice('c', 'Ethyl propanoate'),
        Choice('d', 'Ethyl butanoate'),
      ],
      answer: 'a',
      explanation:
          'Self-condensation needs an α-hydrogen so that one molecule can become the enolate. Ethyl ethanoate, ethyl propanoate, and ethyl butanoate all have that hydrogen. Ethyl benzoate has the carbonyl attached directly to the ring, so there is no α-hydrogen and it cannot be the donor. It can still accept an enolate from a different ester.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Ethanamide is reduced with lithium aluminium hydride, and water is added. The product is',
      choices: const [
        Choice('a', 'ethanamine'),
        Choice('b', 'methanamine'),
        Choice('c', 'ethanol'),
        Choice('d', 'ethanenitrile'),
      ],
      answer: 'a',
      explanation:
          'Lithium aluminium hydride reduces the amide carbonyl to a methylene group and leaves the nitrogen in place. Both carbons remain, so ethanamide becomes ethanamine. Bromine and base would have expelled the carbonyl and given methanamine. An ester or the acid itself would have been reduced to an alcohol, not to an amine.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'Ethyl ethanoate is stirred with sodium borohydride in ethanol. The result is',
      choices: const [
        Choice('a', 'the ester is recovered; sodium borohydride does not reduce it'),
        Choice('b', 'two moles of ethanol'),
        Choice('c', 'ethanal'),
        Choice('d', 'ethane'),
      ],
      answer: 'a',
      explanation:
          'Sodium borohydride reduces aldehydes and ketones. It does not reduce esters, carboxylic acids, or amides under ordinary conditions. Ethyl ethanoate is recovered. Lithium aluminium hydride would have given two moles of ethanol, and cold DIBAL-H would have given the aldehyde. Borohydride does neither.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt: 'Which acid is the strongest?',
      choices: const [
        Choice('a', 'Fluoroethanoic acid'),
        Choice('b', 'Chloroethanoic acid'),
        Choice('c', 'Bromoethanoic acid'),
        Choice('d', 'Ethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'A halogen on the α-carbon withdraws electrons and stabilises the carboxylate. Fluorine is the most electronegative of the three halogens, then chlorine, then bromine. Fluoroethanoic acid is therefore stronger than chloroethanoic acid, which is stronger than bromoethanoic acid. Ethanoic acid has no halogen and is the weakest of the four.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'Propanenitrile is heated with aqueous acid for a long time. The organic product is',
      choices: const [
        Choice('a', 'propanoic acid'),
        Choice('b', 'propan-1-amine'),
        Choice('c', 'ethanoic acid'),
        Choice('d', 'propanal'),
      ],
      answer: 'a',
      explanation:
          'Hot aqueous acid hydrolyses a nitrile through the amide to the carboxylic acid. The carbon count is unchanged, so propanenitrile becomes propanoic acid. A hydride reduction or catalytic hydrogenation would have given propan-1-amine. A one-carbon-shorter acid would have required the chain to be broken, which this hydrolysis does not do.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: 'The scheme shortens an amide. The product is',
      figure: hofmannAmide,
      choices: const [
        Choice('a', 'aniline'),
        Choice('b', 'phenylmethanamine'),
        Choice('c', 'benzamide, recovered unchanged'),
        Choice('d', 'bromobenzene'),
      ],
      answer: 'a',
      explanation:
          'Bromine and base rearrange benzamide to phenyl isocyanate, and water in the mixture converts that isocyanate into aniline with loss of carbon dioxide. The product has one fewer carbon than the amide. Lithium aluminium hydride would have given phenylmethanamine and kept the carbon. Bromobenzene is the Hunsdiecker product of the silver salt of benzoic acid, not of the amide.',
    ),
  ],
);
