import '../../models/content.dart';
import '../../sketch/alcohols.dart';

const _l1 = 'ae-e1-l1';
const _l2 = 'ae-e1-l2';

final Exercise aeExercise1Level1 = Exercise(
  id: _l1,
  title: 'Level 1',
  topic: 'Preparation, acidity, Lucas, and simple oxidation',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l1,
      number: 1,
      prompt: 'Ethylmagnesium bromide is treated with methanal, and acid is added afterwards. The alcohol is',
      choices: const [
        Choice('a', 'propan-1-ol'),
        Choice('b', 'propan-2-ol'),
        Choice('c', 'ethanol'),
        Choice('d', '2-methylpropan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'The ethyl carbon of the Grignard reagent bonds to the carbonyl carbon of methanal. Methanal has two hydrogens on that carbon, so after the acid workup the new C–OH is at the end of a three-carbon chain. The alcohol is primary: propan-1-ol. A ketone would have given a tertiary alcohol, and ethanal would have given a secondary alcohol.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 2,
      prompt: 'Propanone is stirred with sodium borohydride in ethanol, then dilute acid is added. The product is',
      choices: const [
        Choice('a', 'propan-2-ol'),
        Choice('b', 'propan-1-ol'),
        Choice('c', 'propane'),
        Choice('d', 'propanoic acid'),
      ],
      answer: 'a',
      explanation:
          'Sodium borohydride delivers hydride to the carbonyl carbon of a ketone. The oxygen keeps the negative charge until acid supplies a proton, and the product is the secondary alcohol propan-2-ol. The reagent does not remove the oxygen completely, so the alkane is not formed, and it does not oxidise the ketone to an acid.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 3,
      prompt: 'Which compound is the strongest acid?',
      choices: const [
        Choice('a', 'Ethanol'),
        Choice('b', 'Water'),
        Choice('c', 'Phenol'),
        Choice('d', '4-Nitrophenol'),
      ],
      answer: 'd',
      explanation:
          'Ethoxide has no special stabilisation, so ethanol is the weakest acid here. Phenoxide spreads its charge into the ring, which makes phenol stronger than water. A para nitro group pulls still more of that charge onto the oxygens of the nitro group, so 4-nitrophenol is stronger than phenol. The order of acid strength ends at 4-nitrophenol.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 4,
      prompt: 'Which alcohol turns Lucas reagent cloudy as soon as the two are mixed at room temperature?',
      choices: const [
        Choice('a', 'Ethanol'),
        Choice('b', 'Propan-1-ol'),
        Choice('c', 'Propan-2-ol'),
        Choice('d', '2-Methylpropan-2-ol'),
      ],
      answer: 'd',
      explanation:
          'Lucas reagent is hydrochloric acid with zinc chloride. It replaces OH by Cl, and the alkyl chloride separates as a cloud. A tertiary alcohol ionises at once, so 2-methylpropan-2-ol clouds immediately. Propan-2-ol, a secondary alcohol, needs a few minutes. The primary alcohols do not cloud at room temperature on the time scale of this test.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 5,
      prompt: 'Propan-1-ol is oxidised with pyridinium chlorochromate in dichloromethane. The product is',
      choices: const [
        Choice('a', 'propanal'),
        Choice('b', 'propanoic acid'),
        Choice('c', 'propanone'),
        Choice('d', 'propene'),
      ],
      answer: 'a',
      explanation:
          'Pyridinium chlorochromate in dichloromethane takes a primary alcohol as far as the aldehyde and then stops. Propan-1-ol therefore becomes propanal. Aqueous chromic acid or hot permanganate would have continued to propanoic acid. The carbon skeleton is not broken, and the OH carbon is not moved to C2, so the product is not propanone.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 6,
      prompt: 'The same primary alcohol, propan-1-ol, is heated with acidic potassium permanganate. The product is',
      choices: const [
        Choice('a', 'propanoic acid'),
        Choice('b', 'propanal'),
        Choice('c', 'propanone'),
        Choice('d', '2-methylpropan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Hot acidic permanganate is a strong oxidant. A primary alcohol is taken through the aldehyde and on to the carboxylic acid, so the chain remains three carbons and the product is propanoic acid. The aldehyde can be isolated only with a milder reagent such as pyridinium chlorochromate. A tertiary alcohol would have resisted this oxidation because its carbinol carbon has no hydrogen.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 7,
      prompt: 'Which alcohol is oxidised to a ketone by pyridinium chlorochromate?',
      choices: const [
        Choice('a', 'Propan-2-ol'),
        Choice('b', 'Propan-1-ol'),
        Choice('c', '2-Methylpropan-2-ol'),
        Choice('d', 'Methanol'),
      ],
      answer: 'a',
      explanation:
          'A secondary alcohol has one hydrogen on the carbinol carbon. Pyridinium chlorochromate removes that hydrogen and the two hydrogens of the OH in effect, leaving a ketone. Propan-2-ol becomes propanone. A primary alcohol stops at an aldehyde with this reagent. Methanol would give methanal. 2-Methylpropan-2-ol has no hydrogen on the carbinol carbon and is not oxidised.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 8,
      prompt: 'Butan-2-ol is heated with concentrated sulfuric acid. The major product is',
      choices: const [
        Choice('a', 'trans-but-2-ene'),
        Choice('b', 'but-1-ene'),
        Choice('c', 'cis-but-2-ene, ahead of the trans isomer'),
        Choice('d', '2-methylpropene'),
      ],
      answer: 'a',
      explanation:
          'Acid protonates the alcohol, water leaves, and a proton is lost from a neighbouring carbon. The more substituted alkene is preferred, so the double bond sits between C2 and C3. The trans isomer keeps the methyl groups farther apart than the cis isomer and is the major product. The chain does not branch, so 2-methylpropene is not formed. But-1-ene is the minor, less substituted alkene.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 9,
      prompt: 'Propan-1-ol is treated with phosphorus tribromide. The organic product is',
      choices: const [
        Choice('a', '1-bromopropane'),
        Choice('b', '2-bromopropane'),
        Choice('c', 'propene'),
        Choice('d', '1-iodopropane'),
      ],
      answer: 'a',
      explanation:
          'Phosphorus tribromide converts the OH into a leaving group and bromide attacks that same primary carbon. There is no free carbocation, so a hydride does not shift and the bromine stays on C1. The product is 1-bromopropane. Propene would be the result of elimination with strong acid and heat. Iodide is not supplied by this reagent.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 10,
      prompt: 'The scheme is a Williamson synthesis. The ether produced is',
      figure: williamsonAnisole,
      choices: const [
        Choice('a', 'methoxybenzene'),
        Choice('b', 'ethoxybenzene'),
        Choice('c', 'methylbenzene'),
        Choice('d', 'phenol, recovered unchanged'),
      ],
      answer: 'a',
      explanation:
          'The phenoxide ion is the nucleophile and iodomethane is a methyl halide, which is an ideal substrate for SN2. The methyl group bonds to oxygen and the product is methoxybenzene, also called anisole. An aryl halide would not have worked in place of iodomethane, because an unactivated aryl carbon does not undergo SN2. The ring is not alkylated on carbon under these conditions.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 11,
      prompt: 'Phenol is shaken with bromine water. The organic product that separates is',
      choices: const [
        Choice('a', '2,4,6-tribromophenol'),
        Choice('b', '4-bromophenol only'),
        Choice('c', 'bromobenzene'),
        Choice('d', '2-bromophenol only'),
      ],
      answer: 'a',
      explanation:
          'The OH group strongly activates the ring toward electrophiles, and water lets the bromination run to completion. Bromine enters at both ortho positions and at the para position. The product is 2,4,6-tribromophenol, which is a pale solid. A single para bromide is what a less activating solvent such as carbon disulfide gives, when only one equivalent of bromine is used. The OH is not replaced by bromine.',
    ),
    singleQuestion(
      exerciseId: _l1,
      number: 12,
      prompt: 'Which compound dissolves in sodium hydroxide but does not release carbon dioxide from sodium hydrogencarbonate?',
      choices: const [
        Choice('a', 'Phenol'),
        Choice('b', 'Ethanoic acid'),
        Choice('c', 'Benzoic acid'),
        Choice('d', '2-Hydroxybenzoic acid'),
      ],
      answer: 'a',
      explanation:
          'Phenol is acidic enough to be deprotonated by hydroxide, so it dissolves in sodium hydroxide. It is not acidic enough to protonate hydrogencarbonate, whose conjugate acid is carbonic acid, so no carbon dioxide appears. Ethanoic acid, benzoic acid, and 2-hydroxybenzoic acid are all carboxylic acids and they do release carbon dioxide from sodium hydrogencarbonate. That contrast is a practical way to tell a phenol from a carboxylic acid.',
    ),
  ],
);

final Exercise aeExercise1Level2 = Exercise(
  id: _l2,
  title: 'Level 2',
  topic: 'Rearrangement, phenols, Williamson limits, and epoxides',
  instruction: 'Only one option is correct.',
  questions: [
    singleQuestion(
      exerciseId: _l2,
      number: 1,
      prompt: 'The alcohol in the scheme is heated with concentrated sulfuric acid. The major alkene is',
      figure: dimethylbutanol,
      choices: const [
        Choice('a', '2,3-dimethylbut-2-ene'),
        Choice('b', '3,3-dimethylbut-1-ene'),
        Choice('c', '2,3-dimethylbut-1-ene'),
        Choice('d', '2,3-dimethylbutan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'The OH leaves from C2 and leaves a secondary cation next to a quaternary carbon. A methyl group shifts from that quaternary carbon onto C2, and the positive charge ends on a tertiary carbon. Loss of a proton from the neighbouring carbon gives the tetrasubstituted alkene 2,3-dimethylbut-2-ene. The unrearranged terminal alkene is minor. The product of the shift is an alkene, not a second alcohol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 2,
      prompt: 'The diol in the scheme is warmed with sulfuric acid. The carbonyl compound isolated is',
      figure: pinacolRearrangement,
      choices: const [
        Choice('a', '3,3-dimethylbutan-2-one'),
        Choice('b', 'propanone only'),
        Choice('c', '2,3-dimethylbutane-2,3-diol, recovered unchanged'),
        Choice('d', '2,3-dimethylbuta-1,3-diene'),
      ],
      answer: 'a',
      explanation:
          'One OH is protonated and leaves. A methyl group from the neighbouring carbon shifts into the empty orbital, and the remaining OH becomes a carbonyl. The product is a ketone with a tert-butyl group next to the carbonyl: 3,3-dimethylbutan-2-one, called pinacolone when the diol is pinacol. Periodic acid would have cut the diol into two molecules of propanone. Simple dehydration to a diene is not the course of this rearrangement.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 3,
      prompt:
          '3-Phenylprop-2-en-1-ol is to be oxidised to 3-phenylprop-2-enal, with the carbon-carbon double bond left intact. The reagent is',
      choices: const [
        Choice('a', 'pyridinium chlorochromate in dichloromethane'),
        Choice('b', 'hot acidic potassium permanganate'),
        Choice('c', 'sodium borohydride'),
        Choice('d', 'concentrated sulfuric acid, heated'),
      ],
      answer: 'a',
      explanation:
          'The substrate is a primary allylic alcohol. Pyridinium chlorochromate oxidises the CH2OH to an aldehyde and does not attack the double bond. Hot acidic permanganate would cleave that double bond as well as oxidising the alcohol further. Borohydride is a reducing agent and would not oxidise the alcohol. Hot sulfuric acid would dehydrate or polymerise the allylic system rather than stop at the unsaturated aldehyde.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 4,
      prompt: 'The scheme shows a phenol treated with chloroform and strong base. The major product is',
      figure: reimerTiemann,
      choices: const [
        Choice('a', '2-hydroxybenzaldehyde'),
        Choice('b', 'methoxybenzene'),
        Choice('c', 'benzoic acid'),
        Choice('d', 'phenyl methanoate'),
      ],
      answer: 'a',
      explanation:
          'Base and chloroform produce dichlorocarbene. The carbene attacks the ring ortho to the phenoxide, and hydrolysis of the dichloromethyl group leaves an aldehyde. The major product is 2-hydroxybenzaldehyde. A small amount of the para aldehyde can form, but the ortho isomer predominates. The reaction does not methylate the oxygen, and it does not oxidise the ring carbon to a carboxylic acid.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 5,
      prompt: 'Sodium phenoxide is heated with carbon dioxide under pressure, and the salt is then acidified. The major product is',
      figure: kolbeSchmitt,
      choices: const [
        Choice('a', '2-hydroxybenzoic acid'),
        Choice('b', 'methoxybenzene'),
        Choice('c', 'phenyl methanoate'),
        Choice('d', 'benzene'),
      ],
      answer: 'a',
      explanation:
          'Carbon dioxide is an electrophile toward the electron-rich phenoxide ring. It bonds ortho to the oxygen, and acid workup protonates both the carboxylate and the phenoxide. The major product under the usual pressure and temperature is 2-hydroxybenzoic acid. A higher temperature can increase the para isomer, but the ortho acid is the one this preparation is used for. The oxygen is not methylated.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 6,
      prompt: 'Phenyl ethanoate is heated with aluminium chloride. The major phenolic ketone at high temperature is',
      choices: const [
        Choice('a', '1-(2-hydroxyphenyl)ethanone'),
        Choice('b', '1-(4-hydroxyphenyl)ethanone only, with none of the ortho isomer'),
        Choice('c', 'methoxybenzene'),
        Choice('d', 'phenol, with loss of the acetyl group and no rearrangement'),
      ],
      answer: 'a',
      explanation:
          'Aluminium chloride lets the acetyl group leave the phenolic oxygen and reattach to the ring. Both the ortho and the para hydroxy ketones can form. At higher temperature the ortho isomer, 1-(2-hydroxyphenyl)ethanone, is the more stable and becomes the major product. The para isomer is favoured when the mixture is kept cold. Simply hydrolysing the ester would give phenol and would not place the acetyl group on the ring.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 7,
      prompt: 'Sodium ethoxide is heated with 2-bromo-2-methylpropane. The major product is',
      choices: const [
        Choice('a', '2-methylpropene'),
        Choice('b', '2-ethoxy-2-methylpropane'),
        Choice('c', '1-ethoxy-2-methylpropane'),
        Choice('d', '2-methylpropan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Williamson ether synthesis needs the halide to accept backside attack. A tertiary halide is too crowded for that SN2 step, and ethoxide is a strong base, so elimination wins. The only alkene available is 2-methylpropene. The ethyl tert-butyl ether can be made the other way round, from tert-butoxide and a primary halide such as bromoethane. The alcohol would require water, not this combination.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 8,
      prompt: 'Methoxybenzene is warmed with one equivalent of hydrogen iodide. The organic products are',
      choices: const [
        Choice('a', 'phenol and iodomethane'),
        Choice('b', 'iodobenzene and methanol'),
        Choice('c', 'benzene and iodomethane'),
        Choice('d', '2-iodophenol and methane'),
      ],
      answer: 'a',
      explanation:
          'Iodide attacks the methyl carbon, which is the unhindered end of the ether, and the bond between oxygen and the methyl group breaks. The aryl-oxygen bond stays, because an aryl carbon does not undergo SN2 and an aryl cation is not formed under these conditions. The products are phenol and iodomethane. Iodobenzene would require the aryl carbon to be the site of attack, which it is not.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 9,
      prompt: 'The epoxide is opened under the conditions drawn. The major product is',
      figure: epoxideAcid,
      choices: const [
        Choice('a', '2-methoxypropan-1-ol'),
        Choice('b', '1-methoxypropan-2-ol'),
        Choice('c', '1,2-dimethoxypropane'),
        Choice('d', 'propan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Acid protonates the epoxide oxygen. The ring carbon that is better able to bear a positive charge is the more substituted one, and methanol bonds there. The original oxygen remains on the less substituted carbon and becomes the OH. The product is 2-methoxypropan-1-ol. Methoxide in the absence of acid does the opposite and bonds to the less substituted carbon. A second methyl ether would require the remaining OH to be alkylated as well.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 10,
      prompt: 'The same epoxide is opened by methoxide ion, as drawn. The major product is',
      figure: epoxideBase,
      choices: const [
        Choice('a', '1-methoxypropan-2-ol'),
        Choice('b', '2-methoxypropan-1-ol'),
        Choice('c', '1,2-dimethoxypropane'),
        Choice('d', 'propan-1-ol'),
      ],
      answer: 'a',
      explanation:
          'Methoxide is a good nucleophile and the epoxide is not protonated, so the reaction is an ordinary SN2 opening. Attack is fastest at the less substituted carbon, which is the CH2 end. The methoxy group ends on C1 and the OH ends on C2. The product is 1-methoxypropan-2-ol. Acid catalysis reverses that regiochemistry. The carbon skeleton is not shortened to propanol.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 11,
      prompt: 'Phenol is treated with one equivalent of bromine in carbon disulfide, kept cold. The major product is',
      choices: const [
        Choice('a', '4-bromophenol'),
        Choice('b', '2,4,6-tribromophenol'),
        Choice('c', 'bromobenzene'),
        Choice('d', '3-bromophenol'),
      ],
      answer: 'a',
      explanation:
          'In a poorly ionising solvent, and with only one equivalent of bromine, substitution stops after one bromine has entered. The OH group directs to ortho and para, and the para product is the major one because that position is less crowded. 4-Bromophenol is isolated. Bromine water, with no limit on the halogen, continues to the 2,4,6-tribromo compound. The meta position is not the site the OH group activates.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 12,
      prompt: 'Phenol is a stronger acid than cyclohexanol. The best explanation is that',
      choices: const [
        Choice('a', 'the phenoxide ion is stabilised by resonance into the ring'),
        Choice('b', 'cyclohexanol has a more electronegative oxygen'),
        Choice('c', 'phenol is a tertiary alcohol'),
        Choice('d', 'cyclohexanol forms a more stable alkoxide by hyperconjugation'),
      ],
      answer: 'a',
      explanation:
          'When phenol loses its proton, the negative charge on oxygen is shared with the ortho and para carbons of the ring. That delocalisation has no counterpart in cyclohexanol, whose alkoxide keeps the charge on oxygen. The oxygen atoms are the same element in both compounds. Phenol is not a tertiary alcohol, and hyperconjugation in the cyclohexyl ring does not stabilise the alkoxide enough to reverse the acidity.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 13,
      prompt: 'Ethane-1,2-diol is treated with one mole of periodic acid. The carbonyl product is',
      choices: const [
        Choice('a', 'methanal, two moles'),
        Choice('b', 'ethanal'),
        Choice('c', 'ethanoic acid'),
        Choice('d', 'ethane, with no carbonyl compound'),
      ],
      answer: 'a',
      explanation:
          'Periodic acid cleaves the bond between two carbons that each bear an OH. Ethane-1,2-diol has exactly one such bond. Each carbon of that bond becomes a carbonyl, and both carbons carry two hydrogens besides the OH, so each fragment is methanal. One mole of the diol therefore gives two moles of methanal. A longer carbon chain would have been needed to produce ethanal.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 14,
      prompt: 'Which alcohol is unchanged when it is passed over hot copper?',
      choices: const [
        Choice('a', '2-Methylpropan-2-ol'),
        Choice('b', 'Ethanol'),
        Choice('c', 'Propan-1-ol'),
        Choice('d', 'Propan-2-ol'),
      ],
      answer: 'a',
      explanation:
          'Hot copper removes two hydrogens from an alcohol that has a hydrogen on the carbinol carbon. A primary alcohol becomes an aldehyde and a secondary alcohol becomes a ketone. 2-Methylpropan-2-ol is tertiary. Its carbinol carbon has no hydrogen, so this dehydrogenation cannot occur and the alcohol is unchanged by the test. The primary and secondary alcohols in the list are oxidised.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 15,
      prompt: 'Which alcohol gives a yellow precipitate with iodine and aqueous sodium hydroxide?',
      choices: const [
        Choice('a', 'Butan-2-ol'),
        Choice('b', 'Butan-1-ol'),
        Choice('c', '2-Methylpropan-2-ol'),
        Choice('d', 'Phenylmethanol'),
      ],
      answer: 'a',
      explanation:
          'The iodoform test needs a CH3CH(OH)– group, or a methyl ketone that can be formed from it by the halogen. Butan-2-ol has that group and is oxidised to butanone, which then gives iodoform. Butan-1-ol oxidises to an aldehyde that is not a methyl ketone. 2-Methylpropan-2-ol cannot be oxidised to a carbonyl. Phenylmethanol oxidises to benzaldehyde, which has no acetyl group.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 16,
      prompt: 'Cyclohexene oxide is warmed with dilute aqueous acid. The diol obtained is',
      choices: const [
        Choice('a', 'trans-cyclohexane-1,2-diol'),
        Choice('b', 'cis-cyclohexane-1,2-diol'),
        Choice('c', 'cyclohexanol'),
        Choice('d', 'cyclohexane-1,4-diol'),
      ],
      answer: 'a',
      explanation:
          'The protonated epoxide is opened by water from the side opposite the leaving oxygen. That backside attack puts the two OH groups trans to each other on the ring. The product is trans-cyclohexane-1,2-diol. A cis diol would have required delivery of both oxygens from the same face, which is what cold permanganate does to cyclohexene itself. The ring is not opened to a mono-alcohol, and the second OH does not jump to C4.',
    ),
    singleQuestion(
      exerciseId: _l2,
      number: 17,
      prompt: '2,2-Dimethylpropan-1-ol is treated with thionyl chloride. The major organic product is',
      choices: const [
        Choice('a', '1-chloro-2,2-dimethylpropane'),
        Choice('b', '2-chloro-2-methylbutane'),
        Choice('c', '2-methylbut-2-ene'),
        Choice('d', '2,2-dimethylpropanal'),
      ],
      answer: 'a',
      explanation:
          'Thionyl chloride turns the OH into a chlorosulfite and returns chloride to that same primary carbon. No free neopentyl cation is formed, so a methyl group does not shift. The product is 1-chloro-2,2-dimethylpropane. A reagent that first makes the primary cation, such as hydrogen chloride with zinc chloride, can rearrange that cation to the tertiary chloride 2-chloro-2-methylbutane. Thionyl chloride is not an oxidant, so the aldehyde is not the product. Phosphorus tribromide would have given the unrearranged bromide by the same idea.',
    ),
  ],
);
