import '../../models/content.dart';
import '../../sketch/halides.dart';

const _l1 = 'hx-e1-l1';
const _l2 = 'hx-e1-l2';

final Exercise hxExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Preparation, nucleophiles, and simple substitution',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Propan-1-ol is treated with phosphorus tribromide. The major organic product is',
      choices: const [
        Choice('a', '1-bromopropane'),
        Choice('b', '2-bromopropane'),
        Choice('c', 'propene'),
        Choice('d', '1-propanol, recovered unchanged'),
      ],
      answer: 'a',
      explanation:
          'Phosphorus tribromide converts the OH into a leaving group and bromide then attacks the same carbon from the opposite side. The carbon skeleton does not open into a cation, so the bromine stays on C1 and the product is 1-bromopropane. Aqueous hydrogen bromide on a secondary or tertiary alcohol is the case that more often wanders through a cation. Propene would require an elimination, which is not the point of this reagent.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'Which hydrogen halide converts butan-1-ol into the corresponding butyl halide most readily?',
      choices: const [
        Choice('a', 'Hydrogen chloride'),
        Choice('b', 'Hydrogen bromide'),
        Choice('c', 'Hydrogen iodide'),
        Choice('d', 'Hydrogen fluoride'),
      ],
      answer: 'c',
      explanation:
          'The halide ion has to be a good nucleophile and the H–X bond has to supply a proton to the alcohol. Iodide is the best nucleophile of this set in a protic medium, and hydrogen iodide is the strongest acid, so the primary alcohol is turned into 1-iodobutane most easily. Hydrogen bromide is next. Hydrogen chloride is slow unless a Lewis acid such as zinc chloride is added, and hydrogen fluoride is a poor choice for this substitution.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'For substitution on bromomethane, which halide ion is the best leaving group once it has been installed as CH3–X?',
      choices: const [
        Choice('a', 'Fluoride'),
        Choice('b', 'Chloride'),
        Choice('c', 'Bromide'),
        Choice('d', 'Iodide'),
      ],
      answer: 'd',
      explanation:
          'A leaving group departs more easily when the anion it becomes is more stable. Iodide is the largest and least basic of these halide ions, so a C–I bond breaks more readily than a C–Br, C–Cl, or C–F bond in an ordinary SN1 or SN2 reaction. Fluoride is the worst leaving group of the four because hydrogen fluoride is the weakest acid of the hydrogen halides. Aryl substitution by the addition-elimination path is a separate case and does not follow this order.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Which bromide reacts fastest with potassium iodide in acetone?',
      choices: const [
        Choice('a', 'Bromoethane'),
        Choice('b', '2-Bromopropane'),
        Choice('c', '2-Bromo-2-methylpropane'),
        Choice('d', '1-Bromo-2,2-dimethylpropane'),
      ],
      answer: 'a',
      explanation:
          'Iodide in acetone is an SN2 reagent. The nucleophile has to reach the carbon from the side opposite the bromine, so crowding at that carbon slows the reaction sharply. Bromoethane is primary and open. 2-Bromopropane is secondary and slower. The tertiary bromide is too crowded for this path. 1-Bromo-2,2-dimethylpropane is primary on paper, but the tert-butyl group blocks the back side, so it is extremely slow as well.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: '2-Bromo-2-methylpropane is stirred with water. Which statement fits the substitution?',
      choices: const [
        Choice('a', 'Doubling the concentration of added sodium hydroxide doubles the rate'),
        Choice('b', 'The rate depends on the alkyl bromide and not on the hydroxide concentration'),
        Choice('c', 'The product is 2-methylpropan-1-ol'),
        Choice('d', 'The path is a single concerted step with inversion only'),
      ],
      answer: 'b',
      explanation:
          'A tertiary bromide ionises in a polar protic solvent. Water then captures the tert-butyl cation, and the alcohol is 2-methylpropan-2-ol. The slow step is the ionisation, so the rate law contains the alkyl bromide and does not contain the nucleophile. Adding hydroxide does not speed that step. A concerted backside substitution is the SN2 path, which this crowded bromide does not follow.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Potassium cyanide is used to replace the bromine of 1-bromobutane. Which solvent lets that SN2 reaction run most cleanly?',
      choices: const [
        Choice('a', 'Dry dimethylformamide'),
        Choice('b', 'Water'),
        Choice('c', 'Aqueous ethanol'),
        Choice('d', 'Concentrated hydrochloric acid'),
      ],
      answer: 'a',
      explanation:
          'Cyanide is a good nucleophile, and the primary bromide is set up for backside attack. A polar aprotic solvent such as dimethylformamide leaves the anion relatively free, so it can attack. Water and ethanol wrap the cyanide in hydrogen bonds and slow it down, and they can also compete as nucleophiles. Acid would protonate cyanide and destroy the nucleophile.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'What is the organic product of the substitution drawn here?',
      figure: finkelsteinScheme,
      choices: const [
        Choice('a', 'Iodoethane'),
        Choice('b', 'Fluoroethane'),
        Choice('c', 'Ethene'),
        Choice('d', 'Butane'),
      ],
      answer: 'a',
      explanation:
          'Sodium iodide in acetone replaces chloride on a primary carbon by an SN2 reaction. Acetone matters because sodium chloride is insoluble in it and drops out, which pulls the equilibrium toward the iodide. The carbon chain is unchanged, so chloroethane becomes iodoethane. Fluoride would require a metal fluoride, and coupling to a longer chain would require sodium metal.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'In ethanol, which halide ion is the strongest nucleophile toward bromomethane?',
      choices: const [
        Choice('a', 'Fluoride'),
        Choice('b', 'Chloride'),
        Choice('c', 'Bromide'),
        Choice('d', 'Iodide'),
      ],
      answer: 'd',
      explanation:
          'Ethanol is a protic solvent and it hydrogen-bonds most strongly to the smallest anion. Fluoride is wrapped up and is a poor nucleophile here, even though it is the strongest base of the four. Iodide is large, less tightly solvated, and reaches the carbon most easily. The order of nucleophilicity in this solvent is therefore iodide, then bromide, then chloride, then fluoride. In a polar aprotic solvent the order reverses and tracks basicity.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'What is the organic product of the reaction drawn here?',
      figure: swartsScheme,
      choices: const [
        Choice('a', 'Fluoroethane'),
        Choice('b', 'Iodoethane'),
        Choice('c', 'Ethene'),
        Choice('d', 'Ethane'),
      ],
      answer: 'a',
      explanation:
          'Silver fluoride supplies fluoride and the silver ion helps the bromide leave. A primary bromide is converted into the primary fluoride, fluoroethane. This exchange is the Swarts reaction. Sodium iodide in acetone would have given the iodide instead, and a metal such as magnesium would have started a Grignard reagent rather than a fluoride.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'Sodium metal is added to 1-bromopropane in dry ether. The hydrocarbon formed as the coupling product is',
      choices: const [
        Choice('a', 'propane'),
        Choice('b', 'hexane'),
        Choice('c', '2,3-dimethylbutane'),
        Choice('d', 'propene'),
      ],
      answer: 'b',
      explanation:
          'Sodium couples two molecules of the alkyl bromide. Each propyl piece contributes three carbons, so the chain is hexane. 2,3-Dimethylbutane is what the same coupling would make from 2-bromopropane, not from the straight primary bromide. Propene would be an elimination product, and propane would require the bromide to be reduced rather than coupled.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'Which compound forms a stable Grignard reagent when it is stirred with magnesium in dry ether?',
      choices: const [
        Choice('a', 'Bromobenzene'),
        Choice('b', '4-Bromophenol'),
        Choice('c', '3-Bromopropanoic acid'),
        Choice('d', '2-Bromoethanol'),
      ],
      answer: 'a',
      explanation:
          'Magnesium inserts into the C–Br bond of bromobenzene, and the aryl ring has no acidic hydrogen that would immediately destroy the organomagnesium compound. A phenol, a carboxylic acid, and an alcohol all contain an O–H proton. Any Grignard that started to form would deprotonate that group and be lost as the hydrocarbon. Those three substrates are protected, or the acidic group is dealt with, before a Grignard is attempted.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'Which substrate gives the fastest SN1 solvolysis in aqueous ethanol?',
      choices: const [
        Choice('a', 'Bromomethane'),
        Choice('b', 'Bromoethane'),
        Choice('c', '2-Bromopropane'),
        Choice('d', '2-Bromo-2-methylpropane'),
      ],
      answer: 'd',
      explanation:
          'SN1 solvolysis is limited by how easily the C–Br bond ionises. A tertiary cation is far more stable than a secondary cation, which is more stable than a primary or methyl cation. 2-Bromo-2-methylpropane therefore ionises fastest and is captured by the solvent. Bromomethane has no alkyl groups to stabilise a cation and does not follow this path at a useful rate. It would instead be the fastest of the set in an SN2 reaction.',
    ),
  ],
);

final Exercise hxExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Stereochemistry, elimination, aryl halides, and Grignard reagents',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'Hydroxide reacts with the alkyl bromide in the scheme by an SN2 path. The alcohol produced is',
      figure: sn2Inversion,
      choices: const [
        Choice('a', '(S)-butan-2-ol'),
        Choice('b', '(R)-butan-2-ol'),
        Choice('c', 'butan-1-ol'),
        Choice('d', '2-methylpropan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'In the drawing the bromine is on the wedged bond, toward the viewer, and the hydrogen is hashed, away from the viewer. With the methyl group on the left and the ethyl group on the right, that arrangement is the R bromide. Hydroxide attacks from the side opposite bromine, the bromine leaves, and every bond on that carbon turns inside out. The alcohol is (S)-butan-2-ol. The OH does not migrate to the end of the chain, and the skeleton does not rearrange on an SN2 path.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'The scheme shows a primary bromide warmed with aqueous silver ion. The alcohol isolated is',
      figure: neopentylRearrangement,
      choices: const [
        Choice('a', '2,2-dimethylpropan-1-ol'),
        Choice('b', '2-methylbutan-2-ol'),
        Choice('c', '2-methylbutan-1-ol'),
        Choice('d', '3-methylbutan-1-ol'),
      ],
      answer: 'b',
      explanation:
          'Silver ion helps the primary bromide leave, but a primary cation is not the species that survives. A methyl group shifts from the adjacent quaternary carbon as the bromide departs, and the cation that is captured is tertiary. Water bonds to that tertiary carbon. The alcohol is 2-methylbutan-2-ol. The unrearranged primary alcohol would be the SN2 product, and these ionising conditions do not follow that path.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt:
          'The same primary bromide, 1-bromo-2,2-dimethylpropane, is instead heated with sodium iodide in acetone. The organic iodide expected from substitution is',
      choices: const [
        Choice('a', '1-iodo-2,2-dimethylpropane'),
        Choice('b', '2-iodo-2-methylbutane'),
        Choice('c', '2-iodo-2-methylpropane'),
        Choice('d', '2-methylbut-2-ene, with no iodide formed'),
      ],
      answer: 'a',
      explanation:
          'Iodide in acetone is an SN2 reagent. There is no carbocation, so a methyl shift cannot occur, and the iodine atom takes the place of bromine on the original carbon. The product is 1-iodo-2,2-dimethylpropane. The reaction is very slow because the tert-butyl group hinders the back side, but the skeleton of whatever substitution product does form is unchanged. The rearranged tertiary iodide belongs to the silver-ion reaction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: '2-Bromobutane is heated with sodium ethoxide in ethanol. The major product is',
      choices: const [
        Choice('a', 'trans-but-2-ene'),
        Choice('b', 'but-1-ene'),
        Choice('c', 'cis-but-2-ene, in preference to the trans isomer'),
        Choice('d', 'ethoxybutane, by substitution'),
      ],
      answer: 'a',
      explanation:
          'Ethoxide is a strong base and the bromide is secondary, so elimination wins over substitution. The base removes a hydrogen from a carbon next to the one that bears bromine, and the more substituted alkene is preferred. That is but-2-ene rather than but-1-ene. Of the two but-2-enes, the trans isomer keeps the methyl groups apart and is the major product. A bulky base would have been needed to push the double bond out to the end of the chain.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: '2-Bromobutane is heated with potassium tert-butoxide in tert-butyl alcohol. The major product is',
      choices: const [
        Choice('a', 'but-1-ene'),
        Choice('b', 'trans-but-2-ene'),
        Choice('c', 'cis-but-2-ene'),
        Choice('d', '2-tert-butoxybutane'),
      ],
      answer: 'a',
      explanation:
          'tert-Butoxide is a strong base and a poor nucleophile, and it is too bulky to reach an internal hydrogen comfortably. It abstracts a hydrogen from the terminal methyl group, which is the less hindered site, and the double bond ends up at the end of the chain. The major alkene is but-1-ene. Ethoxide, a smaller base, would have given trans-but-2-ene instead. Substitution to the ether is a minor path with this hindered base.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt:
          'Potassium ethoxide removes the hydrogen that sits opposite the bromine in this conformation, and the bromine leaves in the same step. The alkene is',
      figure: antiNewman,
      choices: const [
        Choice('a', 'trans-but-2-ene'),
        Choice('b', 'cis-but-2-ene'),
        Choice('c', 'but-1-ene'),
        Choice('d', '2-methylpropene'),
      ],
      answer: 'a',
      explanation:
          'An E2 reaction needs the hydrogen and the leaving group anti-periplanar, which is the arrangement drawn: bromine is down on the front carbon and a hydrogen is up on the rear carbon. The two methyl groups are also opposite each other. When the bromine and that hydrogen leave, those methyl groups remain on opposite sides of the new double bond, so the alkene is trans-but-2-ene. The cis alkene would have required the methyl groups to start on the same side. But-1-ene would require loss of a hydrogen from a methyl group, not from the rear carbon.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: '(S)-Butan-2-ol is treated with thionyl chloride and pyridine. The configuration of the 2-chlorobutane produced is',
      choices: const [
        Choice('a', 'inverted, so the chloride is R'),
        Choice('b', 'retained, so the chloride is S'),
        Choice('c', 'racemic'),
        Choice('d', 'lost, because the only product is butene'),
      ],
      answer: 'a',
      explanation:
          'Thionyl chloride first turns the alcohol into an alkyl chlorosulfite. Pyridine removes the hydrogen chloride that is formed and frees chloride ion, and that chloride attacks the carbon from the back. The result is the usual SN2 inversion, so the S alcohol becomes the R chloride. If pyridine is left out, the same reagent can deliver chloride from the same face and the configuration is retained. That retention path is not the one pyridine allows. The reaction is a substitution, not an elimination.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'A secondary alkyl bromide is heated with sodium ethoxide in ethanol. The major course of the reaction is',
      choices: const [
        Choice('a', 'E2, and the more substituted alkene predominates'),
        Choice('b', 'SN1, through a free carbocation'),
        Choice('c', 'SN2, and the ethyl ether is the major product'),
        Choice('d', 'E1, which does not require the base'),
      ],
      answer: 'a',
      explanation:
          'Ethoxide is a strong base. On a secondary carbon it removes a β-hydrogen and the bromide leaves in the same step, which is E2. The transition state already has some double-bond character, so the more substituted alkene is the one that forms in larger amount. The ether from SN2 is present in a smaller amount. A free cation would belong to an E1 or SN1 reaction in a weakly basic, strongly ionising medium, not to this combination.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'The scheme shows an aryl chloride heated with hydroxide. The organic product is',
      figure: nitroArylSubstitution,
      choices: const [
        Choice('a', '4-nitrophenol'),
        Choice('b', '3-nitrophenol'),
        Choice('c', 'phenol, with loss of the nitro group'),
        Choice('d', 'chlorobenzene, with loss of the nitro group'),
      ],
      answer: 'a',
      explanation:
          'The nitro group sits para to the chlorine and withdraws electrons from the ring. Hydroxide adds to the carbon that bears chlorine, giving an anionic intermediate in which the negative charge is carried onto the nitro group. Chloride then leaves and the aromatic ring returns. The OH takes the place of Cl, and the nitro group stays where it was, so the product is 4-nitrophenol. Chlorobenzene itself does not do this addition under these conditions, because it has no such electron-withdrawing group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'Chlorobenzene is heated with sodium amide in liquid ammonia. The product, and the intermediate that leads to it, are',
      choices: const [
        Choice('a', 'aniline, through benzyne'),
        Choice('b', 'aniline, through a Meisenheimer complex'),
        Choice('c', 'phenol, through benzyne'),
        Choice('d', 'no reaction, because aryl halides never react with bases'),
      ],
      answer: 'a',
      explanation:
          'Sodium amide is a very strong base. It removes a hydrogen from the carbon next to the chlorine, and chloride then leaves, leaving a triple bond in the ring. That benzyne is attacked by amide ion, and the ring is protonated to aniline. A Meisenheimer complex would have required a nitro group, or something equally withdrawing, and hydroxide rather than this elimination. Phenol is not the product of amide addition.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: '1-Chloro-4-methylbenzene is treated with sodium amide in liquid ammonia. The toluidines formed are',
      choices: const [
        Choice('a', 'the meta and the para isomers'),
        Choice('b', 'only the para isomer'),
        Choice('c', 'only the ortho isomer'),
        Choice('d', 'only the meta isomer'),
      ],
      answer: 'a',
      explanation:
          'Amide ion removes a hydrogen from C3, next to the chlorine at C4, and the leaving group departs to give a benzyne between C3 and C4. Amide can bond to either end of that triple bond. Bonding at C4 puts the amino group para to the methyl group. Bonding at C3 puts it meta. Both toluidines are formed. A direct replacement that kept the amino group only at C4 would be the addition-elimination path, and this ring is not activated for that path.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt:
          'Sodium methoxide reacts with the four 1-halo-4-nitrobenzenes. Which halide is consumed fastest?',
      choices: const [
        Choice('a', 'The fluoride'),
        Choice('b', 'The chloride'),
        Choice('c', 'The bromide'),
        Choice('d', 'The iodide'),
      ],
      answer: 'a',
      explanation:
          'On a para-nitroaryl halide the slow step is addition of the nucleophile, not departure of the halide. Fluorine is the most electronegative of the halogens, so it makes the carbon it is attached to the most electrophilic and the addition is fastest. The C–F bond breaks in a later, faster step. This order is the reverse of the usual leaving-group order in SN1 and SN2, where iodide leaves most easily. That ordinary order does not apply when the addition step sets the pace.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'The scheme shows a diazonium salt treated with copper(I) chloride. The organic product is',
      figure: sandmeyerScheme,
      choices: const [
        Choice('a', 'chlorobenzene'),
        Choice('b', 'fluorobenzene'),
        Choice('c', 'phenol'),
        Choice('d', 'benzene'),
      ],
      answer: 'a',
      explanation:
          'Copper(I) chloride replaces the diazonium group with chlorine. Nitrogen is lost and chlorobenzene is formed. This is the Sandmeyer reaction. Iodobenzene would be made with potassium iodide and does not need the copper salt. Fluorobenzene is made by way of the tetrafluoroborate, and phenol is the product of warming the diazonium salt in water. Benzene would require a reducing agent such as hypophosphorous acid.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt:
          'Bromobenzene and bromoethane are heated together with sodium in dry ether. The cross-coupled aromatic product is',
      choices: const [
        Choice('a', 'ethylbenzene'),
        Choice('b', 'toluene'),
        Choice('c', 'biphenyl only, with no alkylbenzene'),
        Choice('d', 'styrene'),
      ],
      answer: 'a',
      explanation:
          'Sodium can couple an aryl halide with an alkyl halide. The phenyl piece and the ethyl piece join, and the aromatic product of that cross coupling is ethylbenzene. Biphenyl, from two phenyl groups, and butane, from two ethyl groups, are side products, but they are not the cross-coupled compound asked for here. Toluene would have required a methyl halide. The reaction does not introduce a double bond into the side chain.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'The scheme is run in dry ether, and acid is added only after the carbon dioxide. The product is',
      figure: grignardToAcid,
      choices: const [
        Choice('a', 'propanoic acid'),
        Choice('b', 'ethanoic acid'),
        Choice('c', 'butanoic acid'),
        Choice('d', 'ethane'),
      ],
      answer: 'a',
      explanation:
          'Magnesium converts bromoethane into ethylmagnesium bromide. The ethyl carbon attacks carbon dioxide, and the carboxylate that forms has one carbon more than the ethyl group. Acid at the end protonates that salt and releases propanoic acid. Butanoic acid would have needed a propyl Grignard. If water had been added before the carbon dioxide, the Grignard would have been destroyed and the organic product would have been ethane.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: '2-Bromo-2-methylpropane is heated with sodium ethoxide in ethanol. The major product is',
      choices: const [
        Choice('a', '2-methylpropene'),
        Choice('b', '2-ethoxy-2-methylpropane'),
        Choice('c', '1-ethoxy-2-methylpropane'),
        Choice('d', '2-methylpropan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'The bromide is tertiary, so backside substitution is blocked, and ethoxide is a strong base. Elimination is the path that remains. Every β-hydrogen is on a methyl group, so there is only one alkene, 2-methylpropene. The ethyl ether would require an SN1 capture under much less basic conditions, and the alcohol would require water. A primary bromide with the same base would have been a closer contest between substitution and elimination.',
    ),
  ],
);
