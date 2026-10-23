import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for carboxylic acids and their derivatives.

/// Alcohol oxygen stays in the ester.
final MolSketch fischerLabel = MolSketch(
  name: 'ethanoic acid and labelled ethanol giving a labelled ester',
  width: 720,
  height: 220,
  atoms: const [
    MAtom('me', 40, 120, label: 'CH3'),
    MAtom('c', 120, 120),
    MAtom('o', 120, 58, label: 'O'),
    MAtom('oh', 200, 120, label: 'OH'),
    MAtom('pme', 460, 120, label: 'CH3'),
    MAtom('pc', 540, 120),
    MAtom('po', 540, 58, label: 'O'),
    MAtom('bridge', 640, 120, label: '18OEt'),
  ],
  bonds: const [
    MBond('me', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'oh'),
    MBond('pme', 'pc'),
    MBond('pc', 'po', order: 2),
    MBond('pc', 'bridge'),
  ],
  arrows: const [MArrow(Offset(260, 120), Offset(400, 120), label: 'Et18OH, H+')],
);

/// Alpha bromination of a carboxylic acid.
final MolSketch hvzAcid = MolSketch(
  name: 'propanoic acid and bromine with phosphorus giving 2-bromopropanoic acid',
  width: 740,
  height: 230,
  atoms: const [
    MAtom('me', 36, 130, label: 'CH3'),
    MAtom('ch2', 110, 130, label: 'CH2'),
    MAtom('c', 190, 130),
    MAtom('o', 190, 68, label: 'O'),
    MAtom('oh', 270, 130, label: 'OH'),
    MAtom('pme', 430, 130, label: 'CH3'),
    MAtom('ch', 510, 130, label: 'CH'),
    MAtom('br', 510, 68, label: 'Br'),
    MAtom('pc', 590, 130),
    MAtom('po', 590, 68, label: 'O'),
    MAtom('poh', 670, 130, label: 'OH'),
  ],
  bonds: const [
    MBond('me', 'ch2'),
    MBond('ch2', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'oh'),
    MBond('pme', 'ch'),
    MBond('ch', 'br'),
    MBond('ch', 'pc'),
    MBond('pc', 'po', order: 2),
    MBond('pc', 'poh'),
  ],
  arrows: const [MArrow(Offset(310, 130), Offset(390, 130), label: 'Br2, P')],
);

/// Two esters condensed to a beta-keto ester.
final MolSketch claisenEster = MolSketch(
  name: 'two molecules of ethyl ethanoate condensed to ethyl 3-oxobutanoate',
  width: 760,
  height: 240,
  atoms: const [
    MAtom('me', 28, 140, label: 'CH3'),
    MAtom('c', 96, 140),
    MAtom('o', 96, 78, label: 'O'),
    MAtom('oet', 170, 140, label: 'OEt'),
    MAtom('pme', 400, 150, label: 'CH3'),
    MAtom('pc', 468, 150),
    MAtom('po', 468, 88, label: 'O'),
    MAtom('ch2', 540, 150, label: 'CH2'),
    MAtom('c2', 612, 150),
    MAtom('o2', 612, 88, label: 'O'),
    MAtom('oet2', 690, 150, label: 'OEt'),
  ],
  bonds: const [
    MBond('me', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'oet'),
    MBond('pme', 'pc'),
    MBond('pc', 'po', order: 2),
    MBond('pc', 'ch2'),
    MBond('ch2', 'c2'),
    MBond('c2', 'o2', order: 2),
    MBond('c2', 'oet2'),
  ],
  notes: const [MNote(250, 48, 'two molecules')],
  arrows: const [MArrow(Offset(230, 150), Offset(340, 150), label: 'EtONa')],
);

/// Amide shortened to an amine.
final MolSketch hofmannAmide = MolSketch(
  name: 'benzamide with bromine and base giving aniline',
  width: 640,
  height: 210,
  atoms: const [
    MAtom('ph', 50, 120, label: 'Ph'),
    MAtom('c', 130, 120),
    MAtom('o', 130, 58, label: 'O'),
    MAtom('nh', 210, 120, label: 'NH2'),
    MAtom('pph', 430, 120, label: 'Ph'),
    MAtom('pnh', 520, 120, label: 'NH2'),
  ],
  bonds: const [
    MBond('ph', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'nh'),
    MBond('pph', 'pnh'),
  ],
  arrows: const [MArrow(Offset(270, 120), Offset(370, 120), label: 'Br2, KOH')],
);

/// Cold DIBAL-H stops an ester at the aldehyde.
final MolSketch dibalEster = MolSketch(
  name: 'methyl benzoate reduced by cold DIBAL-H to benzaldehyde',
  width: 680,
  height: 220,
  atoms: const [
    MAtom('ph', 48, 130, label: 'Ph'),
    MAtom('c', 130, 130),
    MAtom('o', 130, 68, label: 'O'),
    MAtom('ome', 220, 130, label: 'OCH3'),
    MAtom('pph', 470, 130, label: 'Ph'),
    MAtom('pc', 550, 130),
    MAtom('po', 550, 68, label: 'O'),
    MAtom('h', 630, 130, label: 'H'),
  ],
  bonds: const [
    MBond('ph', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'ome'),
    MBond('pph', 'pc'),
    MBond('pc', 'po', order: 2),
    MBond('pc', 'h'),
  ],
  arrows: const [MArrow(Offset(290, 130), Offset(410, 130), label: 'DIBAL-H, cold')],
);

/// Silver salt decarboxylated to an aryl bromide.
final MolSketch hunsdiecker = MolSketch(
  name: 'silver benzoate and bromine giving bromobenzene',
  width: 660,
  height: 220,
  atoms: const [
    MAtom('ph', 48, 130, label: 'Ph'),
    MAtom('c', 130, 130),
    MAtom('o', 130, 68, label: 'O'),
    MAtom('oag', 220, 130, label: 'OAg'),
    MAtom('pph', 450, 130, label: 'Ph'),
    MAtom('br', 540, 130, label: 'Br'),
  ],
  bonds: const [
    MBond('ph', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'oag'),
    MBond('pph', 'br'),
  ],
  arrows: const [MArrow(Offset(290, 130), Offset(390, 130), label: 'Br2')],
);
