import '../../models/content.dart';
import '../../sketch/carbonyl.dart';

const _l1 = 'co-e1-l1';
const _l2 = 'co-e1-l2';

final Exercise coExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Preparation, addition, and the basic tests',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Toluene is treated with chromyl chloride, and the complex is then hydrolysed. The aromatic product is',
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', 'benzoic acid'),
        Choice('c', 'phenylmethanol'),
        Choice('d', '1-phenylethanone'),
      ],
      answer: 'a',
      explanation:
          'Chromyl chloride attacks the methyl group of toluene and, after the complex is broken with water, that methyl group has become an aldehyde. This is the Etard oxidation, and it stops at benzaldehyde. Hot permanganate would have burned the side chain down to benzoic acid. Hydrolysis of benzyl chloride would have given the alcohol, and a Friedel–Crafts acylation would have given a ketone.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'The scheme is a catalytic hydrogenation of an acyl chloride. The product is',
      figure: rosenmund,
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', 'phenylmethanol'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'methylbenzene'),
      ],
      answer: 'a',
      explanation:
          'Hydrogen over palladium on barium sulfate reduces a benzoyl chloride as far as the aldehyde and then stops. The barium sulfate keeps the catalyst from taking the aldehyde on to the alcohol. The product is benzaldehyde. Water would have hydrolysed the chloride to benzoic acid, and a dissolving-metal reduction is not what this hydrogenation does.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'Benzonitrile is reduced with tin(II) chloride and hydrogen chloride, and the mixture is then diluted with water. The product is',
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', 'phenylmethanamine'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'benzamide'),
      ],
      answer: 'a',
      explanation:
          'Tin(II) chloride and hydrogen chloride add to the nitrile and hold it as an imine salt. Water then frees the aldehyde, so benzonitrile becomes benzaldehyde. A hydride reagent such as lithium aluminium hydride would have continued to the amine. Ordinary acid hydrolysis of the nitrile would have given the amide and then the carboxylic acid, which is a different sequence.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Benzene is treated with carbon monoxide and hydrogen chloride in the presence of aluminium chloride and copper(I) chloride. The product is',
      choices: const [
        Choice('a', 'benzaldehyde'),
        Choice('b', '1-phenylethanone'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'diphenylmethanone'),
      ],
      answer: 'a',
      explanation:
          'Carbon monoxide and hydrogen chloride, with the two Lewis acids, put a formyl group onto benzene. The product is benzaldehyde. An acetyl chloride in place of this gas mixture would have given 1-phenylethanone. The reaction does not insert a second ring, and it does not oxidise the new side chain to a carboxylic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'But-2-ene is ozonised, and the ozonide is worked up with zinc and water. The carbonyl product is',
      choices: const [
        Choice('a', 'ethanal, two moles'),
        Choice('b', 'ethanoic acid, two moles'),
        Choice('c', 'propanone, one mole'),
        Choice('d', 'methanal and propanal'),
      ],
      answer: 'a',
      explanation:
          'The double bond of but-2-ene sits between C2 and C3, and both of those carbons carry one methyl group and one hydrogen. Reductive workup cuts the double bond and leaves each fragment as an aldehyde, so one mole of the alkene gives two moles of ethanal. Hydrogen peroxide would have oxidised those aldehydes to ethanoic acid. An unsymmetrical alkene would have been needed to produce two different carbonyl compounds.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'Which order of reactivity toward hydrogen cyanide is correct?',
      choices: const [
        Choice('a', 'methanal > ethanal > propanone'),
        Choice('b', 'propanone > ethanal > methanal'),
        Choice('c', 'ethanal > methanal > propanone'),
        Choice('d', 'propanone > methanal > ethanal'),
      ],
      answer: 'a',
      explanation:
          'Nucleophilic addition is fastest when the carbonyl carbon is most exposed and most electron-poor. Methanal has two hydrogens on that carbon. Ethanal replaces one of them with a methyl group, which both crowds the carbon and pushes electron density toward it. Propanone has two methyl groups, so it is the slowest of the three. The order is methanal, then ethanal, then propanone.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'Propanone is treated with hydrogen cyanide, and the adduct is hydrolysed with aqueous acid. The organic product is',
      choices: const [
        Choice('a', '2-hydroxy-2-methylpropanoic acid'),
        Choice('b', 'propanoic acid'),
        Choice('c', '2-hydroxypropanoic acid'),
        Choice('d', '2-methylpropanenitrile, with the hydroxy group lost'),
      ],
      answer: 'a',
      explanation:
          'Cyanide bonds to the carbonyl carbon and the oxygen keeps its proton, giving the cyanohydrin (CH3)2C(OH)CN. Acid hydrolyses the nitrile to a carboxylic acid and leaves the OH in place. The product is 2-hydroxy-2-methylpropanoic acid. A three-carbon acid would have required the nitrile carbon to be lost. Ethanal, not propanone, would have led to 2-hydroxypropanoic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Which compound forms a crystalline adduct with sodium hydrogensulfite?',
      choices: const [
        Choice('a', 'Ethanal'),
        Choice('b', '1-Phenylethanone'),
        Choice('c', 'Diphenylmethanone'),
        Choice('d', 'Pentan-3-one'),
      ],
      answer: 'a',
      explanation:
          'The hydrogensulfite ion adds to a carbonyl that is not crowded. Aldehydes do this readily, so ethanal gives a crystalline adduct. 1-Phenylethanone and diphenylmethanone are blocked by the aryl rings. Pentan-3-one is a ketone without a methyl group next to the carbonyl, and that extra bulk also stops a useful adduct. The test is therefore a practical way to pick the aldehyde out of this list.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'Benzaldehyde is treated with methylmagnesium bromide, and dilute acid is added afterwards. The alcohol is',
      choices: const [
        Choice('a', '1-phenylethanol'),
        Choice('b', '2-phenylethanol'),
        Choice('c', '2-phenylpropan-2-ol'),
        Choice('d', 'phenylmethanol'),
      ],
      answer: 'a',
      explanation:
          'The methyl carbon of the Grignard reagent bonds to the carbonyl carbon of benzaldehyde. Acid supplies the proton on oxygen. The carbon that carried the oxygen now also carries the phenyl ring, the new methyl group, and one hydrogen, so the alcohol is secondary: 1-phenylethanol. A ketone would have given a tertiary alcohol. A hydride reducing agent would have given phenylmethanol, with no new carbon-carbon bond.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'Ethanal is warmed with hydroxylamine in a weakly acidic solution. The derivative is',
      choices: const [
        Choice('a', 'an oxime'),
        Choice('b', 'a hydrazone'),
        Choice('c', 'a cyanohydrin'),
        Choice('d', 'ethanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Hydroxylamine is NH2OH. The nitrogen adds to the carbonyl carbon, and water leaves, so the C=O becomes C=N–OH. That derivative is an oxime. A hydrazone would have required hydrazine, and a cyanohydrin would have required hydrogen cyanide. Hydroxylamine does not oxidise the aldehyde to the carboxylic acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'The scheme shows ethanal treated with dilute base and then heated. The major product is',
      figure: aldolCroton,
      choices: const [
        Choice('a', 'but-2-enal'),
        Choice('b', 'butanal'),
        Choice('c', 'ethanol and sodium ethanoate'),
        Choice('d', '3-hydroxybutanal, which does not dehydrate on heating'),
      ],
      answer: 'a',
      explanation:
          'Dilute base removes an α-hydrogen from one molecule of ethanal, and that enolate adds to the carbonyl of a second molecule. The first product is the β-hydroxy aldehyde 3-hydroxybutanal. Heat then eliminates water, and the double bond is conjugated with the remaining carbonyl. The major product is but-2-enal. Concentrated base on an aldehyde that has no α-hydrogen would have been needed for the disproportionation to an alcohol and a salt.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'Which compound gives a silver mirror with Tollens reagent?',
      choices: const [
        Choice('a', 'Benzaldehyde'),
        Choice('b', '1-Phenylethanone'),
        Choice('c', 'Diphenylmethanone'),
        Choice('d', 'Propanone'),
      ],
      answer: 'a',
      explanation:
          'Tollens reagent is a mild oxidant that turns an aldehyde into a carboxylate and deposits silver. Benzaldehyde is an aldehyde, even though the group is attached to a ring, so it gives the mirror. The other three compounds are ketones. A ketone does not have the aldehydic hydrogen that this oxidation removes, so none of them reduces Tollens reagent.',
    ),
  ],
);

final Exercise coExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Named reactions, enols, and selectivity',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt:
          'Benzaldehyde is stirred with propanal and dilute sodium hydroxide, and the mixture is then heated. The crossed product, formed by the enolate of propanal, is',
      choices: const [
        Choice('a', '2-methyl-3-phenylprop-2-enal'),
        Choice('b', '3-phenylprop-2-enal, with no extra methyl group'),
        Choice('c', 'phenylmethanol'),
        Choice('d', '1-phenylpropan-1-ol'),
      ],
      answer: 'a',
      explanation:
          'Propanal can lose an α-hydrogen from C2. That enolate adds to benzaldehyde, which has no enolizable hydrogen of its own and so acts as the electrophile. The adduct is a β-hydroxy aldehyde with a methyl branch on the carbon next to the carbonyl. Loss of water gives 2-methyl-3-phenylprop-2-enal. Ethanal, not propanal, would have led to the unbranched cinnamaldehyde. Concentrated base without the enolizable partner would have reduced benzaldehyde to the alcohol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'The scheme is a condensation of benzaldehyde with an excess of a ketone. The product is',
      figure: claisenSchmidt,
      choices: const [
        Choice('a', '4-phenylbut-3-en-2-one'),
        Choice('b', '3-phenylprop-2-enoic acid'),
        Choice('c', 'phenylmethanol and sodium benzoate'),
        Choice('d', '1,5-diphenylpenta-1,4-dien-3-one as the only product when the ketone is in excess'),
      ],
      answer: 'a',
      explanation:
          'The enolate of propanone adds to benzaldehyde, and the adduct loses water because the new double bond is conjugated with both the ring and the remaining carbonyl. With the ketone in excess, only one side of propanone condenses. The product is 4-phenylbut-3-en-2-one. The unsaturated acid would have required an acid anhydride. The diaryl dienone is what forms when benzaldehyde, not the ketone, is in excess.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt: 'Benzaldehyde is heated with acetic anhydride and sodium acetate. The product isolated after workup is',
      choices: const [
        Choice('a', '3-phenylprop-2-enoic acid'),
        Choice('b', '3-phenylprop-2-enal'),
        Choice('c', 'phenyl ethanoate'),
        Choice('d', '1-phenylethanol'),
      ],
      answer: 'a',
      explanation:
          'The acetate ion removes an α-hydrogen from the anhydride, and that anion adds to benzaldehyde. Dehydration and hydrolysis leave an α,β-unsaturated carboxylic acid. The product is 3-phenylprop-2-enoic acid. The unsaturated aldehyde is the result of condensing benzaldehyde with ethanal, not with the anhydride. The anhydride is not simply esterifying the ring hydrogen.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: 'The scheme shows benzaldehyde in concentrated base. The organic products are',
      figure: cannizzaro,
      choices: const [
        Choice('a', 'phenylmethanol and sodium benzoate'),
        Choice('b', '3-phenylprop-2-enal'),
        Choice('c', '2-hydroxy-1,2-diphenylethanone'),
        Choice('d', 'benzaldehyde recovered, because it has no α-hydrogen'),
      ],
      answer: 'a',
      explanation:
          'Benzaldehyde has no hydrogen on the carbon next to the carbonyl, so it cannot form an enolate and it cannot do an aldol condensation. In concentrated hydroxide, one molecule donates its aldehydic hydride to another. The donor becomes the carboxylate and the acceptor becomes the alcohol. The products are phenylmethanol and sodium benzoate. The hydroxy ketone would have required cyanide, not this base.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt:
          'Methanal and benzaldehyde are heated together with concentrated sodium hydroxide. The alcohol formed in the greater amount is',
      choices: const [
        Choice('a', 'phenylmethanol'),
        Choice('b', 'methanol'),
        Choice('c', '1-phenylethanol'),
        Choice('d', 'diphenylmethanol'),
      ],
      answer: 'a',
      explanation:
          'Both aldehydes lack an α-hydrogen, so the reaction is a crossed Cannizzaro reaction rather than an aldol reaction. Methanal is the less hindered carbonyl and is the one that is oxidised to formate. Benzaldehyde receives the hydride and becomes phenylmethanol. Methanol would be the reduction product of methanal in its own self-reaction, which is the minor path here. No new carbon-carbon bond is formed.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: '1-Phenylethanone is refluxed with zinc amalgam and concentrated hydrochloric acid. The product is',
      choices: const [
        Choice('a', 'ethylbenzene'),
        Choice('b', '1-phenylethanol'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'methylbenzene'),
      ],
      answer: 'a',
      explanation:
          'Zinc amalgam in strong acid replaces the carbonyl oxygen of a ketone by two hydrogens. The methyl ketone side chain of 1-phenylethanone becomes an ethyl group, and the ring is unchanged, so the product is ethylbenzene. Sodium borohydride would have stopped at the alcohol. The acidic mixture does not cleave the bond between the carbonyl carbon and the ring.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'Cyclohexanone is heated with hydrazine and potassium hydroxide. The product is',
      choices: const [
        Choice('a', 'cyclohexane'),
        Choice('b', 'cyclohexanol'),
        Choice('c', 'cyclohexene'),
        Choice('d', 'oxepan-2-one'),
      ],
      answer: 'a',
      explanation:
          'Hydrazine first converts the ketone into a hydrazone. Hot hydroxide then drives off nitrogen and leaves a CH2 group where the carbonyl was. Cyclohexanone becomes cyclohexane. A hydride reducing agent would have given the alcohol, and a peracid would have expanded the ring to the lactone. The reaction is a reduction, not an elimination to the alkene.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'Which compound gives a yellow precipitate with iodine and aqueous sodium hydroxide?',
      choices: const [
        Choice('a', '1-Phenylethanone'),
        Choice('b', 'Benzaldehyde'),
        Choice('c', 'Pentan-3-one'),
        Choice('d', 'Diphenylmethanone'),
      ],
      answer: 'a',
      explanation:
          'The haloform reaction needs a methyl ketone, or an aldehyde that is ethanal. 1-Phenylethanone has the CH3CO group, so iodine and base replace those hydrogens and then cleave the chain. Iodoform separates as the yellow solid, and the other fragment is benzoate. Benzaldehyde and diphenylmethanone have no such methyl group. Pentan-3-one has two ethyl groups on the carbonyl, so it is not a methyl ketone.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'The scheme is an oxidation of a methyl ketone by a peracid. The ester produced is',
      figure: baeyerVilliger,
      choices: const [
        Choice('a', 'phenyl ethanoate'),
        Choice('b', 'methyl benzoate'),
        Choice('c', '2-hydroxy-1-phenylethanone'),
        Choice('d', 'benzoic acid and methanol'),
      ],
      answer: 'a',
      explanation:
          'The peracid adds to the carbonyl, and then one of the groups on that carbon shifts onto the new oxygen as the carboxylate leaves. A phenyl group shifts ahead of a methyl group. In 1-phenylethanone the phenyl group therefore ends up attached to oxygen, and the methyl group stays on the carbonyl. The ester is phenyl ethanoate. Methyl benzoate would have required the methyl group to migrate instead.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'The scheme replaces the oxygen of a cyclic ketone. The product is',
      figure: wittigMethylene,
      choices: const [
        Choice('a', 'methylenecyclohexane'),
        Choice('b', 'methylcyclohexane'),
        Choice('c', 'cyclohexene'),
        Choice('d', 'cyclohexanol'),
      ],
      answer: 'a',
      explanation:
          'The phosphorus ylide Ph3P=CH2 adds to the carbonyl carbon, and the four-membered intermediate then collapses. The carbonyl oxygen leaves bound to phosphorus, and the ylide carbon stays bound to the ring by a double bond. Cyclohexanone becomes methylenecyclohexane. A hydride reagent would have given the alcohol, and a reduction of the whole carbonyl to CH2 would have given methylcyclohexane, with no double bond.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: 'Which compound has the higher enol content under ordinary conditions?',
      choices: const [
        Choice('a', 'Pentane-2,4-dione'),
        Choice('b', 'Propanone'),
        Choice('c', 'Benzaldehyde'),
        Choice('d', 'Diphenylmethanone'),
      ],
      answer: 'a',
      explanation:
          'Propanone is almost entirely the keto form. Pentane-2,4-dione can move a hydrogen from the central carbon onto one oxygen, and the resulting double bond is conjugated with the remaining carbonyl. An intramolecular hydrogen bond stabilises that enol further, so a large fraction of the dione sits in the enol form. Benzaldehyde and diphenylmethanone have no α-hydrogen that can make this kind of enol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Benzaldehyde gives a silver mirror with Tollens reagent but no red precipitate with Fehling solution. Ethanal gives both. The correct statement is that',
      choices: const [
        Choice('a', 'Fehling solution oxidises aliphatic aldehydes and not aromatic aldehydes'),
        Choice('b', 'every compound oxidised by Tollens reagent is also oxidised by Fehling solution'),
        Choice('c', 'Fehling solution reduces an aldehyde to a primary alcohol'),
        Choice('d', 'aromatic aldehydes are oxidised more easily than aliphatic aldehydes by Fehling solution'),
      ],
      answer: 'a',
      explanation:
          'Both reagents are oxidants, and both turn an aliphatic aldehyde into a carboxylate. Tollens reagent is strong enough to do the same to an aromatic aldehyde, which is why benzaldehyde gives the silver mirror. Fehling solution, the alkaline copper(II) reagent, does not oxidise a typical aromatic aldehyde, so no red copper(I) oxide appears. The copper reagent is not a source of hydride, and it does not reduce the carbonyl to an alcohol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'Propanone is warmed with semicarbazide. The derivative is',
      choices: const [
        Choice('a', 'a semicarbazone'),
        Choice('b', 'an oxime'),
        Choice('c', 'propane'),
        Choice('d', 'propanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Semicarbazide is H2N–NH–CONH2. The terminal nitrogen adds to the carbonyl carbon of propanone, and water leaves. The product is the semicarbazone, with the group C=N–NHCONH2. An oxime would have required hydroxylamine. Semicarbazide does not remove the oxygen completely to give the alkane, and it does not oxidise the ketone.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt: 'But-2-ene is ozonised, and the ozonide is worked up with hydrogen peroxide. The product is',
      choices: const [
        Choice('a', 'ethanoic acid'),
        Choice('b', 'ethanal'),
        Choice('c', 'methanal'),
        Choice('d', 'propanone'),
      ],
      answer: 'a',
      explanation:
          'The first cleavage is the same as in a reductive workup: but-2-ene is cut into two two-carbon carbonyl fragments. Hydrogen peroxide then oxidises each of those aldehydes to a carboxylic acid. Both fragments are ethanoic acid. Zinc and water would have left them as ethanal. The chain is too symmetrical, and too short, to produce methanal or propanone.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'Which aldehyde adds hydrogen cyanide more rapidly?',
      choices: const [
        Choice('a', '4-Nitrobenzaldehyde'),
        Choice('b', '4-Methoxybenzaldehyde'),
        Choice('c', 'the two are equal, because both are aromatic aldehydes'),
        Choice('d', 'neither, because an aromatic aldehyde does not add hydrogen cyanide'),
      ],
      answer: 'a',
      explanation:
          'The rate of nucleophilic addition rises when the carbonyl carbon is more positive. A para nitro group pulls electron density out of the ring and out of the carbonyl, so 4-nitrobenzaldehyde is the more reactive. A para methoxy group donates electron density and slows the addition. Both aldehydes can still form cyanohydrins. The ring does not forbid the reaction.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: 'Ethanal is treated with 2,4-dinitrophenylhydrazine. The result is',
      choices: const [
        Choice('a', 'an orange solid, the 2,4-dinitrophenylhydrazone'),
        Choice('b', 'a silver mirror'),
        Choice('c', 'a yellow precipitate of iodoform'),
        Choice('d', 'no reaction, because the reagent is used only for ketones'),
      ],
      answer: 'a',
      explanation:
          'The hydrazine nitrogen adds to the carbonyl, and water leaves. Aldehydes and ketones both do this. The product from ethanal is a 2,4-dinitrophenylhydrazone, which separates as an orange or yellow solid. The reagent contains no silver and no iodine, so it produces neither a mirror nor iodoform.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 17,
      prompt: 'Which reagent oxidises phenylmethanol and stops at benzaldehyde?',
      choices: const [
        Choice('a', 'pyridinium chlorochromate in dichloromethane'),
        Choice('b', 'hot acidic potassium permanganate'),
        Choice('c', 'sodium borohydride'),
        Choice('d', 'zinc amalgam and concentrated hydrochloric acid'),
      ],
      answer: 'a',
      explanation:
          'Phenylmethanol is a primary alcohol. Pyridinium chlorochromate in dichloromethane takes a primary alcohol as far as the aldehyde, so the product is benzaldehyde. Hot acidic permanganate continues through the aldehyde to benzoic acid. Borohydride is a reducing agent and does not oxidise the alcohol. Zinc amalgam reduces a carbonyl that is already present; it does not create one from an alcohol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 18,
      prompt: 'Propanone is warmed with hydrazine. The derivative, before any strong base is added, is',
      choices: const [
        Choice('a', 'a hydrazone'),
        Choice('b', 'propane'),
        Choice('c', 'an oxime'),
        Choice('d', 'propan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Hydrazine adds to the carbonyl and water leaves, giving the hydrazone (CH3)2C=NNH2. That is the first stage of the Wolff–Kishner reduction. Only when the hydrazone is afterwards heated with strong base does nitrogen leave and the carbon become CH2. Hydroxylamine would have given the oxime, and a hydride reagent would have given the alcohol. Hydrazine by itself does neither.',
    ),
  ],
);
