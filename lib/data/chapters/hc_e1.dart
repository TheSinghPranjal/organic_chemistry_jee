import '../../models/content.dart';
import '../../sketch/reactions.dart';

const _l1 = 'hc-e1-l1';
const _l2 = 'hc-e1-l2';

final Exercise hcExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Alkene stability, simple additions, and alkyne reductions',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Which alkene releases the least heat when one mole is hydrogenated to an alkane?',
      choices: const [
        Choice('a', 'Ethene'),
        Choice('b', 'Propene'),
        Choice('c', 'trans-But-2-ene'),
        Choice('d', '2,3-Dimethylbut-2-ene'),
      ],
      answer: 'd',
      explanation:
          'Heat of hydrogenation measures how far an alkene sits above its alkane. Alkyl groups on the double bond stabilise the alkene, so a tetrasubstituted double bond, as in 2,3-dimethylbut-2-ene, is the most stable of this set and gives off the least heat. Ethene, with no alkyl groups, is the least stable and gives off the most.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'The major product when butan-2-ol is heated with concentrated sulfuric acid is',
      choices: const [
        Choice('a', 'but-1-ene'),
        Choice('b', 'cis-but-2-ene'),
        Choice('c', 'trans-but-2-ene'),
        Choice('d', '2-methylpropene'),
      ],
      answer: 'c',
      explanation:
          'Acid turns the alcohol into an oxonium ion, water leaves, and a proton is lost from a neighbouring carbon. The more substituted alkene is preferred, so the double bond ends up between C2 and C3 rather than at the end of the chain. Of the two but-2-enes, the trans isomer keeps the methyl groups farther apart and is the major product. The carbon skeleton does not rearrange here, so 2-methylpropene is not formed.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'What is the organic product of the reduction drawn here?',
      figure: butyneToCis,
      choices: const [
        Choice('a', 'cis-But-2-ene'),
        Choice('b', 'trans-But-2-ene'),
        Choice('c', 'Butane'),
        Choice('d', 'But-1-ene'),
      ],
      answer: 'a',
      explanation:
          'A Lindlar catalyst is palladium poisoned so that it adds one equivalent of hydrogen to an alkyne and then stops. Both hydrogens are delivered to the same face of the triple bond, so but-2-yne becomes cis-but-2-ene. Sodium in liquid ammonia is the reagent that gives the trans alkene. Full reduction to butane needs an ordinary metal catalyst and more hydrogen.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'What is the organic product of the reduction drawn here?',
      figure: butyneToTrans,
      choices: const [
        Choice('a', 'cis-But-2-ene'),
        Choice('b', 'trans-But-2-ene'),
        Choice('c', 'Butane'),
        Choice('d', 'Buta-1,3-diene'),
      ],
      answer: 'b',
      explanation:
          'Sodium in liquid ammonia transfers electrons to the alkyne one at a time. The vinyl radical anion that forms prefers the trans geometry, because the two alkyl groups stay apart, and the protonation locks that geometry in. The product is trans-but-2-ene. A poisoned palladium catalyst would have given the cis isomer instead.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'The scheme shows propene treated with hydrogen bromide and no peroxide. The product is',
      figure: propenePlusHBr,
      choices: const [
        Choice('a', '1-bromopropane'),
        Choice('b', '2-bromopropane'),
        Choice('c', '1,2-dibromopropane'),
        Choice('d', 'propane'),
      ],
      answer: 'b',
      explanation:
          'Hydrogen bromide adds so that the proton goes to the less substituted alkene carbon. That choice leaves the positive charge on the more substituted carbon, a secondary cation rather than a primary one. Bromide then bonds there, and the product is 2-bromopropane. A peroxide would reverse the orientation, and bromine itself, not hydrogen bromide, would put two bromine atoms on the chain.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Propene is treated with hydrogen bromide in the presence of a peroxide. The major product is',
      choices: const [
        Choice('a', '1-bromopropane'),
        Choice('b', '2-bromopropane'),
        Choice('c', 'propan-1-ol'),
        Choice('d', 'propan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Peroxide starts a radical chain. A bromine atom adds first, and it adds to the end carbon so that the radical left behind is secondary. The chain then abstracts hydrogen from another HBr, putting the hydrogen on the middle carbon. The alkyl bromide is therefore 1-bromopropane, the anti-Markovnikov product. Without the peroxide the ionic path would have given 2-bromopropane.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt:
          'Reductive ozonolysis of the alkene drawn here, followed by zinc and water, produces which pair?',
      figure: methylbutene,
      choices: const [
        Choice('a', 'Propanone and ethanal'),
        Choice('b', 'Propanone only'),
        Choice('c', 'Ethanal and methanal'),
        Choice('d', 'Butanone and methanal'),
      ],
      answer: 'a',
      explanation:
          'Ozonolysis cuts the double bond and, after a reductive workup, each alkene carbon becomes a carbonyl. The left-hand carbon of 2-methylbut-2-ene carries two methyl groups, so it becomes propanone. The right-hand carbon carries one methyl group and one hydrogen, so it becomes ethanal. An oxidative workup would have turned that aldehyde into acetic acid. A symmetrical alkene such as 2,3-dimethylbut-2-ene would have given propanone alone.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Which hydrocarbon is the strongest acid?',
      choices: const [
        Choice('a', 'Ethane'),
        Choice('b', 'Ethene'),
        Choice('c', 'Ethyne'),
        Choice('d', 'Propane'),
      ],
      answer: 'c',
      explanation:
          'The hydrogen of ethyne is on an sp carbon. An sp orbital has more s character than an sp2 or sp3 orbital, so the electrons of the C–H bond are held closer to carbon and the proton leaves more readily. Ethene is next, and the alkanes are the weakest acids of the set. Propane does not become stronger than ethane in any useful sense; both are sp3.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'Sodium reacts with bromoethane in dry ether. The hydrocarbon formed is',
      choices: const [
        Choice('a', 'ethane'),
        Choice('b', 'propane'),
        Choice('c', 'butane'),
        Choice('d', '2-methylpropane'),
      ],
      answer: 'c',
      explanation:
          'Two molecules of the alkyl bromide are coupled by sodium. Each ethyl group contributes two carbons, so the product is a four-carbon chain, butane. This coupling is useful when the two halves are the same. A mixture of two different bromides would give three coupling products, not one.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'Propene is treated with borane in tetrahydrofuran, then with alkaline hydrogen peroxide. The alcohol obtained is',
      choices: const [
        Choice('a', 'propan-1-ol'),
        Choice('b', 'propan-2-ol'),
        Choice('c', 'propane-1,2-diol'),
        Choice('d', 'propanone'),
      ],
      answer: 'a',
      explanation:
          'Boron adds to the less substituted carbon of the double bond and hydrogen adds to the more substituted carbon, both from the same face. Alkaline peroxide then replaces the carbon–boron bond with a carbon–oxygen bond and keeps that carbon’s configuration. The OH therefore ends on C1, and the alcohol is propan-1-ol. Acid and water would have put the OH on C2.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt:
          'Propene is treated with mercuric acetate in water, and the organomercury compound is then reduced with sodium borohydride. The alcohol obtained is',
      choices: const [
        Choice('a', 'propan-1-ol'),
        Choice('b', 'propan-2-ol'),
        Choice('c', 'propanal'),
        Choice('d', 'propene, recovered unchanged'),
      ],
      answer: 'b',
      explanation:
          'The mercuric salt forms a bridged ion. Water attacks the more substituted carbon, which is the Markovnikov position, and the later reduction replaces mercury with hydrogen. The product is propan-2-ol. Because the bridge never opens to a free carbocation, a rearrangement that might have happened in ordinary acid hydration does not happen here. Hydroboration is the method that would have given propan-1-ol.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'Which compound leaves the brown colour of bromine in carbon tetrachloride unchanged?',
      choices: const [
        Choice('a', 'Cyclohexene'),
        Choice('b', 'Propyne'),
        Choice('c', 'Hexane'),
        Choice('d', 'Buta-1,3-diene'),
      ],
      answer: 'c',
      explanation:
          'Bromine in an inert solvent adds to a carbon–carbon multiple bond and the brown colour disappears. Cyclohexene, propyne, and buta-1,3-diene all have such a bond. Hexane is a saturated alkane, so it does not add bromine under these conditions and the colour stays. Light and a different solvent can chlorinate or brominate an alkane by a radical path, but that is not this test.',
    ),
  ],
);

final Exercise hcExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Selectivity, rearrangements, stereochemistry, and alkyne additions',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'Butane is mixed with bromine and exposed to light. The major monobromo product is',
      choices: const [
        Choice('a', '1-bromobutane'),
        Choice('b', '2-bromobutane'),
        Choice('c', '1,2-dibromobutane'),
        Choice('d', '2-bromo-2-methylpropane'),
      ],
      answer: 'b',
      explanation:
          'Light generates bromine atoms, and a bromine atom abstracts hydrogen. Abstraction at C2 gives a secondary radical, which is much more stable than the primary radical from C1. Bromine is selective enough that this preference outweighs the greater number of primary hydrogens, so 2-bromobutane is the major product. The skeleton is unchanged, and one substitution, not addition, is the result.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'Which reagent shows the strongest preference for a tertiary C–H over a primary C–H in an alkane?',
      choices: const [
        Choice('a', 'Fluorine, with light'),
        Choice('b', 'Chlorine, with light'),
        Choice('c', 'Bromine, with light'),
        Choice('d', 'Iodine, which is more selective than bromine'),
      ],
      answer: 'c',
      explanation:
          'The bromine atom is less reactive than a chlorine or fluorine atom, so it waits for the hydrogen that is easiest to remove. That is the tertiary hydrogen, and the selectivity tertiary over primary is very large. Chlorine is faster and much less choosy. Fluorine is so reactive that the reaction is violent and barely selective. Iodine atoms do not carry the substitution through usefully, because the hydrogen-abstraction step is unfavorable.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'The alkene drawn here is treated with hydrogen bromide and no peroxide. The major product is',
      figure: methylbut1ene,
      choices: const [
        Choice('a', '2-bromo-3-methylbutane'),
        Choice('b', '1-bromo-3-methylbutane'),
        Choice('c', '2-bromo-2-methylbutane'),
        Choice('d', '1-bromo-2-methylbutane'),
      ],
      answer: 'c',
      explanation:
          'The proton adds to the end carbon and leaves a secondary cation at C2. A hydride then shifts from C3, where the carbon holds two methyl groups, onto C2. The new cation is tertiary. Bromide bonds to that tertiary carbon, and the isolated product is 2-bromo-2-methylbutane. The unrearranged secondary bromide is formed in smaller amount. A peroxide would have started a radical path and avoided this shift.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt:
          'The same alkene, 3-methylbut-1-ene, is put through oxymercuration and demercuration. The alcohol isolated is',
      choices: const [
        Choice('a', '3-methylbutan-2-ol'),
        Choice('b', '2-methylbutan-2-ol'),
        Choice('c', '3-methylbutan-1-ol'),
        Choice('d', '2-methylbutan-1-ol'),
      ],
      answer: 'a',
      explanation:
          'Mercuric acetate adds through a bridged ion, and water attacks the more substituted carbon of the original double bond, which is C2. Reduction then replaces mercury with hydrogen. The OH stays on C2 and the carbon skeleton never becomes a free cation, so there is no hydride shift. The alcohol is 3-methylbutan-2-ol. Ordinary aqueous acid would have rearranged much of the material to the tertiary alcohol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'Propene, hydrogen chloride, and a peroxide are mixed. The major product is',
      choices: const [
        Choice('a', '1-chloropropane'),
        Choice('b', '2-chloropropane'),
        Choice('c', '1,2-dichloropropane'),
        Choice('d', 'propan-1-ol'),
      ],
      answer: 'b',
      explanation:
          'The peroxide reversal of regiochemistry is a radical chain that works for hydrogen bromide. Hydrogen chloride does not follow that chain usefully: the chlorine atom is too reactive, and the alternative step is unfavorable. Addition therefore stays ionic. The proton adds first, the cation is secondary, and the product is 2-chloropropane.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'Bromine in an inert solvent is added to the alkene drawn here. The product is',
      figure: transButene,
      choices: const [
        Choice('a', 'a meso dibromide, one achiral compound'),
        Choice('b', 'a racemic mixture of two enantiomeric dibromides'),
        Choice('c', '2-bromobutane'),
        Choice('d', '1,4-dibromobutane'),
      ],
      answer: 'a',
      explanation:
          'Bromine adds through a bridged bromonium ion, and the bromide ion opens that bridge from the opposite face. The two bromines are therefore trans to each other. Starting from trans-but-2-ene, that anti addition produces the meso stereoisomer of 2,3-dibromobutane, which has a mirror plane and is a single achiral compound. The cis alkene would have given the racemic pair instead.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'Bromine is added in the same way to the cis alkene drawn here. The addition produces',
      figure: cisButene,
      choices: const [
        Choice('a', 'only the meso dibromide'),
        Choice('b', 'a racemic pair of enantiomeric dibromides'),
        Choice('c', 'only (2R,3S)-2,3-dibromobutane, which is chiral'),
        Choice('d', 'butane'),
      ],
      answer: 'b',
      explanation:
          'Anti addition to the cis alkene puts the two bromine atoms on opposite faces and gives (2R,3R)-2,3-dibromobutane and (2S,3S)-2,3-dibromobutane in equal amounts. Those two are enantiomers, so the product is racemic. The meso compound is (2R,3S), and it is what the trans alkene gives under the same anti addition. (2R,3S) is achiral, so option c misstates both the product and its chirality.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'cis-But-2-ene is stirred with cold, dilute alkaline permanganate. The diol obtained is',
      choices: const [
        Choice('a', 'the meso diol'),
        Choice('b', 'a racemic diol'),
        Choice('c', 'butane-1,4-diol'),
        Choice('d', 'butanone'),
      ],
      answer: 'a',
      explanation:
          'Cold alkaline permanganate adds two hydroxyl groups to the same face of the double bond. Syn addition to cis-but-2-ene produces the meso stereoisomer of butane-2,3-diol. The same cis alkene gives a racemic dibromide with bromine, because that addition is anti. Warm, concentrated permanganate would cleave the double bond instead of stopping at the diol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'The scheme shows the hydration of propyne. The carbonyl compound in the flask at the end is',
      figure: propyneHydration,
      choices: const [
        Choice('a', 'propanone'),
        Choice('b', 'propanal'),
        Choice('c', 'propanoic acid'),
        Choice('d', 'propan-1-ol'),
      ],
      answer: 'a',
      explanation:
          'Mercuric ion adds so that water attacks the more substituted carbon of the triple bond. The first organic product is an enol, CH3–C(OH)=CH2. That enol tautomerises to the ketone, propanone. A terminal alkyne therefore becomes a methyl ketone under these conditions. The aldehyde would require a hindered borane, followed by oxidation, which puts the oxygen on the end carbon.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt:
          'Propyne is treated with disiamylborane and then with alkaline hydrogen peroxide. The carbonyl compound obtained is',
      choices: const [
        Choice('a', 'propanal'),
        Choice('b', 'propanone'),
        Choice('c', 'propanoic acid'),
        Choice('d', 'propan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'The bulky borane adds once, with boron on the terminal carbon and hydrogen on the inner carbon. Oxidation replaces boron with oxygen and gives the enol CH3–CH=CHOH, which tautomerises to propanal. This is the anti-Markovnikov hydration of a terminal alkyne. Mercuric ion in aqueous acid does the opposite and gives propanone.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt:
          '1,1-Dibromobutane is heated with sodium amide in liquid ammonia, and the mixture is later poured into water. The hydrocarbon isolated is but-1-yne. Why is a third mole of sodium amide required, beyond the two moles that remove the two molecules of HBr?',
      choices: const [
        Choice('a', 'The terminal alkyne is deprotonated as soon as it forms'),
        Choice('b', 'The third mole reduces the triple bond to a cis alkene'),
        Choice('c', 'The third mole adds water across the triple bond'),
        Choice('d', 'Sodium amide rearranges but-1-yne into but-2-yne'),
      ],
      answer: 'a',
      explanation:
          'Two eliminations turn the geminal dibromide into the terminal alkyne. That alkyne is acidic enough for sodium amide to remove its acetylenic proton, so a third mole of base is consumed and the salt of the alkyne is what is actually present. Pouring the mixture into water protonates the salt and releases but-1-yne. An internal alkyne has no such proton, and two moles of base are enough for it.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Buta-1,3-diene is treated with one equivalent of hydrogen bromide at a very low temperature. The major product is',
      figure: butadiene,
      choices: const [
        Choice('a', '3-bromobut-1-ene'),
        Choice('b', '1-bromobut-2-ene'),
        Choice('c', '1-bromobutane'),
        Choice('d', '2-bromobutane'),
      ],
      answer: 'a',
      explanation:
          'The proton adds at an end carbon and produces an allylic cation. The positive charge is shared by C2 and C4. At low temperature the bromide ion bonds to the nearer carbon, C2, before the ions separate, and the kinetic product is 3-bromobut-1-ene. The other allylic isomer, 1-bromobut-2-ene, is more stable because its double bond is disubstituted, and it becomes the major product when the mixture is warmed and the addition can reverse.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'Which diene has the lower heat of hydrogenation to hexane?',
      choices: const [
        Choice('a', 'Hexa-2,4-diene'),
        Choice('b', 'Hexa-1,5-diene'),
        Choice('c', 'They are equal, because both are C6H10'),
        Choice('d', 'Hexa-1,5-diene, because isolated double bonds are more stable'),
      ],
      answer: 'a',
      explanation:
          'Both dienes consume two moles of hydrogen and give hexane, so the heats can be compared directly. In hexa-2,4-diene the two double bonds are conjugated, and that delocalisation stabilises the diene. Hexa-1,5-diene has an isolated pair of double bonds and lacks that stabilisation. The conjugated diene therefore starts lower in energy and releases less heat.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt:
          'An acyclic alkene gives only propanone on reductive ozonolysis. The alkene is',
      choices: const [
        Choice('a', '2,3-dimethylbut-2-ene'),
        Choice('b', '2-methylpropene'),
        Choice('c', '2-methylbut-2-ene'),
        Choice('d', 'propene'),
      ],
      answer: 'a',
      explanation:
          'A single carbonyl product means the two halves of the double bond were the same. Propanone comes from a carbon that carried two methyl groups. The alkene must therefore be (CH3)2C=C(CH3)2, which is 2,3-dimethylbut-2-ene. 2-Methylpropene would also have produced methanal. 2-Methylbut-2-ene would have produced propanone and ethanal. Propene would have produced ethanal and methanal.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'In the radical chlorination of an alkane, hydrogen is abstracted most rapidly from a',
      choices: const [
        Choice('a', 'tertiary carbon'),
        Choice('b', 'secondary carbon'),
        Choice('c', 'primary carbon of a methyl group at the end of a long chain'),
        Choice('d', 'methane molecule, in preference to any tertiary C–H'),
      ],
      answer: 'a',
      explanation:
          'The transition state of the abstraction resembles the radical that is forming. A tertiary radical is more stable than a secondary radical, which is more stable than a primary radical, so the tertiary C–H breaks fastest. Chlorine is not as selective as bromine, but the order of rates is the same. A methyl group at the end of a chain is primary and is the slowest site, not the fastest.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: 'Addition of bromine to cyclohexene does not rearrange the ring. The best explanation is that',
      choices: const [
        Choice('a', 'the intermediate is a bridged bromonium ion, not an open carbocation'),
        Choice('b', 'bromine adds by a radical chain, like hydrogen bromide with peroxide'),
        Choice('c', 'the product is an alkane, so there is nothing left to rearrange'),
        Choice('d', 'cyclohexene is too strained to form a cation'),
      ],
      answer: 'a',
      explanation:
          'The bromine molecule is polarised as it approaches the double bond and both atoms of a bridging bromonium ion are attached before a free carbocation can form. The nucleophile opens that bridge. An open secondary cation would have been able to rearrange, but that cation is not an intermediate here. The addition is ionic and stereospecifically anti. It is not the peroxide radical chain, and the product is a dibromide, not an alkane.',
    ),
  ],
);
