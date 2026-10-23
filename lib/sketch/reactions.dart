import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for the hydrocarbons chapter.
/// An arrow runs from the substrate to the product, with the reagent as its label.

final MolSketch butyneToCis = MolSketch(
  name: 'but-2-yne reduced with a Lindlar catalyst to cis-but-2-ene',
  width: 600,
  height: 190,
  atoms: const [
    MAtom('a1', 48, 100, label: 'CH3'),
    MAtom('a2', 108, 100),
    MAtom('a3', 168, 100),
    MAtom('a4', 228, 100, label: 'CH3'),
    MAtom('b1', 400, 52, label: 'CH3'),
    MAtom('b2', 400, 148, label: 'H'),
    MAtom('b3', 456, 100),
    MAtom('b4', 512, 100),
    MAtom('b5', 568, 52, label: 'CH3'),
    MAtom('b6', 568, 148, label: 'H'),
  ],
  bonds: const [
    MBond('a1', 'a2'),
    MBond('a2', 'a3', order: 3),
    MBond('a3', 'a4'),
    MBond('b1', 'b3'),
    MBond('b2', 'b3'),
    MBond('b3', 'b4', order: 2),
    MBond('b4', 'b5'),
    MBond('b4', 'b6'),
  ],
  arrows: const [
    MArrow(Offset(268, 100), Offset(348, 100), label: 'H2, Lindlar'),
  ],
);

final MolSketch butyneToTrans = MolSketch(
  name: 'but-2-yne reduced with sodium in ammonia to trans-but-2-ene',
  width: 600,
  height: 190,
  atoms: const [
    MAtom('a1', 48, 100, label: 'CH3'),
    MAtom('a2', 108, 100),
    MAtom('a3', 168, 100),
    MAtom('a4', 228, 100, label: 'CH3'),
    MAtom('b1', 400, 52, label: 'CH3'),
    MAtom('b2', 400, 148, label: 'H'),
    MAtom('b3', 456, 100),
    MAtom('b4', 512, 100),
    MAtom('b5', 568, 148, label: 'CH3'),
    MAtom('b6', 568, 52, label: 'H'),
  ],
  bonds: const [
    MBond('a1', 'a2'),
    MBond('a2', 'a3', order: 3),
    MBond('a3', 'a4'),
    MBond('b1', 'b3'),
    MBond('b2', 'b3'),
    MBond('b3', 'b4', order: 2),
    MBond('b4', 'b5'),
    MBond('b4', 'b6'),
  ],
  arrows: const [
    MArrow(Offset(268, 100), Offset(348, 100), label: 'Na, NH3'),
  ],
);

final MolSketch propenePlusHBr = MolSketch(
  name: 'propene plus hydrogen bromide gives 2-bromopropane',
  width: 470,
  height: 160,
  atoms: const [
    MAtom('m', 36, 82, label: 'CH3'),
    MAtom('c2', 100, 82),
    MAtom('c1', 158, 82),
    MAtom('h1', 206, 46, label: 'H'),
    MAtom('h2', 206, 118, label: 'H'),
    MAtom('p1', 330, 46, label: 'CH3'),
    MAtom('p2', 330, 118, label: 'CH3'),
    MAtom('ch', 386, 82, label: 'CH'),
    MAtom('br', 448, 82, label: 'Br'),
  ],
  bonds: const [
    MBond('m', 'c2'),
    MBond('c2', 'c1', order: 2),
    MBond('c1', 'h1'),
    MBond('c1', 'h2'),
    MBond('p1', 'ch'),
    MBond('p2', 'ch'),
    MBond('ch', 'br'),
  ],
  arrows: const [
    MArrow(Offset(236, 82), Offset(292, 82), label: 'HBr'),
  ],
);

final MolSketch methylbutene = MolSketch(
  name: '2-methylbut-2-ene',
  width: 270,
  height: 150,
  atoms: const [
    MAtom('a', 40, 40, label: 'CH3'),
    MAtom('b', 40, 112, label: 'CH3'),
    MAtom('c1', 108, 76),
    MAtom('c2', 168, 76),
    MAtom('h', 228, 40, label: 'H'),
    MAtom('e', 228, 112, label: 'CH3'),
  ],
  bonds: const [
    MBond('a', 'c1'),
    MBond('b', 'c1'),
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'h'),
    MBond('c2', 'e'),
  ],
);

final MolSketch transButene = MolSketch(
  name: 'trans-but-2-ene',
  width: 230,
  height: 140,
  atoms: const [
    MAtom('lu', 36, 32, label: 'CH3'),
    MAtom('ld', 36, 108, label: 'H'),
    MAtom('c1', 92, 70),
    MAtom('c2', 144, 70),
    MAtom('ru', 200, 32, label: 'H'),
    MAtom('rd', 200, 108, label: 'CH3'),
  ],
  bonds: const [
    MBond('lu', 'c1'),
    MBond('ld', 'c1'),
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'ru'),
    MBond('c2', 'rd'),
  ],
);

final MolSketch cisButene = MolSketch(
  name: 'cis-but-2-ene',
  width: 230,
  height: 140,
  atoms: const [
    MAtom('lu', 36, 32, label: 'CH3'),
    MAtom('ld', 36, 108, label: 'H'),
    MAtom('c1', 92, 70),
    MAtom('c2', 144, 70),
    MAtom('ru', 200, 32, label: 'CH3'),
    MAtom('rd', 200, 108, label: 'H'),
  ],
  bonds: const [
    MBond('lu', 'c1'),
    MBond('ld', 'c1'),
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'ru'),
    MBond('c2', 'rd'),
  ],
);

final MolSketch methylbut1ene = MolSketch(
  name: '3-methylbut-1-ene',
  width: 340,
  height: 160,
  atoms: const [
    MAtom('h1', 40, 40, label: 'H'),
    MAtom('h2', 40, 116, label: 'H'),
    MAtom('c1', 78, 76),
    MAtom('c2', 136, 76),
    MAtom('h3', 136, 28, label: 'H'),
    MAtom('c3', 204, 76, label: 'CH'),
    MAtom('m1', 272, 32, label: 'CH3'),
    MAtom('m2', 272, 120, label: 'CH3'),
  ],
  bonds: const [
    MBond('h1', 'c1'),
    MBond('h2', 'c1'),
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'h3'),
    MBond('c2', 'c3'),
    MBond('c3', 'm1'),
    MBond('c3', 'm2'),
  ],
);

final MolSketch butadiene = MolSketch(
  name: 'buta-1,3-diene',
  width: 360,
  height: 160,
  atoms: const [
    MAtom('h1', 36, 36, label: 'H'),
    MAtom('h2', 36, 124, label: 'H'),
    MAtom('c1', 88, 80),
    MAtom('c2', 148, 80),
    MAtom('h3', 148, 28, label: 'H'),
    MAtom('c3', 214, 80),
    MAtom('h6', 214, 132, label: 'H'),
    MAtom('c4', 274, 80),
    MAtom('h4', 324, 32, label: 'H'),
    MAtom('h5', 324, 128, label: 'H'),
  ],
  bonds: const [
    MBond('h1', 'c1'),
    MBond('h2', 'c1'),
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'h3'),
    MBond('c2', 'c3'),
    MBond('c3', 'h6'),
    MBond('c3', 'c4', order: 2),
    MBond('c4', 'h4'),
    MBond('c4', 'h5'),
  ],
);

final MolSketch propyneHydration = MolSketch(
  name: 'propyne hydrated to propanone',
  width: 540,
  height: 170,
  atoms: const [
    MAtom('m', 48, 88, label: 'CH3'),
    MAtom('c2', 108, 88),
    MAtom('c1', 168, 88),
    MAtom('h', 220, 88, label: 'H'),
    MAtom('k1', 380, 88, label: 'CH3'),
    MAtom('k2', 440, 88),
    MAtom('o', 492, 40, label: 'O'),
    MAtom('k3', 492, 136, label: 'CH3'),
  ],
  bonds: const [
    MBond('m', 'c2'),
    MBond('c2', 'c1', order: 3),
    MBond('c1', 'h'),
    MBond('k1', 'k2'),
    MBond('k2', 'o', order: 2),
    MBond('k2', 'k3'),
  ],
  arrows: const [
    MArrow(Offset(258, 88), Offset(340, 88), label: 'Hg2+, H2O'),
  ],
);
