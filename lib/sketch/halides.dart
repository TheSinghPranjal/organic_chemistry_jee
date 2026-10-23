import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for the halides chapter.

Offset _hexPoint(Offset center, double radius, int index) {
  final angle = -math.pi / 2 + index * math.pi / 3;
  return Offset(center.dx + radius * math.cos(angle), center.dy + radius * math.sin(angle));
}

List<MAtom> _ringAtoms(String prefix, Offset center, double radius) {
  return [
    for (var i = 0; i < 6; i++)
      MAtom('$prefix$i', _hexPoint(center, radius, i).dx, _hexPoint(center, radius, i).dy),
  ];
}

List<MBond> _ringBonds(String prefix) {
  return [
    for (var i = 0; i < 6; i++) MBond('$prefix$i', '$prefix${(i + 1) % 6}'),
  ];
}

final MolSketch sn2Inversion = MolSketch(
  name: '(R)-2-bromobutane reacting with hydroxide to give (S)-butan-2-ol',
  width: 640,
  height: 210,
  atoms: const [
    MAtom('aMe', 48, 108, label: 'CH3'),
    MAtom('aC', 130, 108),
    MAtom('aEt', 214, 108, label: 'CH2CH3'),
    MAtom('aBr', 130, 42, label: 'Br'),
    MAtom('aH', 130, 174, label: 'H'),
    MAtom('bMe', 400, 108, label: 'CH3'),
    MAtom('bC', 482, 108),
    MAtom('bEt', 572, 108, label: 'CH2CH3'),
    MAtom('bH', 482, 42, label: 'H'),
    MAtom('bOh', 482, 174, label: 'OH'),
  ],
  bonds: const [
    MBond('aMe', 'aC'),
    MBond('aC', 'aEt'),
    MBond('aC', 'aBr', style: BondStyle.wedge),
    MBond('aC', 'aH', style: BondStyle.hash),
    MBond('bMe', 'bC'),
    MBond('bC', 'bEt'),
    MBond('bC', 'bH', style: BondStyle.wedge),
    MBond('bC', 'bOh', style: BondStyle.hash),
  ],
  arrows: const [
    MArrow(Offset(290, 108), Offset(350, 108), label: 'OH-'),
  ],
);

final MolSketch neopentylRearrangement = MolSketch(
  name: 'neopentyl bromide warmed with aqueous silver ion to 2-methylbutan-2-ol',
  width: 620,
  height: 230,
  atoms: const [
    MAtom('q', 108, 108),
    MAtom('up', 108, 46, label: 'CH3'),
    MAtom('left', 46, 164, label: 'CH3'),
    MAtom('right', 170, 164, label: 'CH3'),
    MAtom('ch2', 214, 108, label: 'CH2'),
    MAtom('br', 286, 108, label: 'Br'),
    MAtom('c', 470, 100),
    MAtom('t', 470, 40, label: 'CH3'),
    MAtom('m', 400, 100, label: 'CH3'),
    MAtom('oh', 540, 100, label: 'OH'),
    MAtom('et', 470, 168, label: 'CH2CH3'),
  ],
  bonds: const [
    MBond('q', 'up'),
    MBond('q', 'left'),
    MBond('q', 'right'),
    MBond('q', 'ch2'),
    MBond('ch2', 'br'),
    MBond('c', 't'),
    MBond('c', 'm'),
    MBond('c', 'oh'),
    MBond('c', 'et'),
  ],
  arrows: const [
    MArrow(Offset(330, 108), Offset(370, 108), label: 'Ag+, H2O'),
  ],
);

final MolSketch antiNewman = MolSketch(
  name: 'Newman projection of 2-bromobutane with bromine anti to a hydrogen',
  width: 360,
  height: 360,
  atoms: const [],
  bonds: const [],
  newman: Newman(
    center: Offset(180, 180),
    radius: 34,
    front: [
      NewmanArm(6, 'Br'),
      NewmanArm(10, 'CH3'),
      NewmanArm(2, 'H'),
    ],
    back: [
      NewmanArm(0, 'H'),
      NewmanArm(4, 'CH3'),
      NewmanArm(8, 'H'),
    ],
  ),
);

final MolSketch nitroArylSubstitution = _nitroScheme();

MolSketch _nitroScheme() {
  const left = Offset(120, 112);
  const right = Offset(430, 112);
  const radius = 40.0;
  return MolSketch(
    name: '1-chloro-4-nitrobenzene heated with hydroxide to 4-nitrophenol',
    width: 560,
    height: 250,
    atoms: [
      ..._ringAtoms('l', left, radius),
      MAtom('cl', left.dx, left.dy - radius - 38, label: 'Cl'),
      MAtom('n1', left.dx, left.dy + radius + 46, label: 'NO2'),
      ..._ringAtoms('r', right, radius),
      MAtom('oh', right.dx, right.dy - radius - 38, label: 'OH'),
      MAtom('n2', right.dx, right.dy + radius + 46, label: 'NO2'),
    ],
    bonds: [
      ..._ringBonds('l'),
      MBond('l0', 'cl'),
      MBond('l3', 'n1'),
      ..._ringBonds('r'),
      MBond('r0', 'oh'),
      MBond('r3', 'n2'),
    ],
    rings: [
      RingMark(left, radius * 0.55),
      RingMark(right, radius * 0.55),
    ],
    arrows: const [
      MArrow(Offset(250, 112), Offset(320, 112), label: 'NaOH, heat'),
    ],
  );
}

final MolSketch grignardToAcid = MolSketch(
  name: 'bromoethane converted by magnesium and carbon dioxide into propanoic acid',
  width: 600,
  height: 190,
  atoms: const [
    MAtom('m', 46, 96, label: 'CH3'),
    MAtom('c', 118, 96, label: 'CH2'),
    MAtom('br', 190, 96, label: 'Br'),
    MAtom('p1', 390, 96, label: 'CH3'),
    MAtom('p2', 458, 96, label: 'CH2'),
    MAtom('co', 522, 96),
    MAtom('o', 566, 48, label: 'O'),
    MAtom('oh', 566, 146, label: 'OH'),
  ],
  bonds: const [
    MBond('m', 'c'),
    MBond('c', 'br'),
    MBond('p1', 'p2'),
    MBond('p2', 'co'),
    MBond('co', 'o', order: 2),
    MBond('co', 'oh'),
  ],
  arrows: const [
    MArrow(Offset(250, 96), Offset(340, 96), label: 'Mg, CO2, H+'),
  ],
);

final MolSketch finkelsteinScheme = MolSketch(
  name: 'chloroethane converted to iodoethane with sodium iodide in acetone',
  width: 520,
  height: 150,
  atoms: const [
    MAtom('m', 48, 78, label: 'CH3'),
    MAtom('c', 118, 78, label: 'CH2'),
    MAtom('cl', 188, 78, label: 'Cl'),
    MAtom('n', 360, 78, label: 'CH3'),
    MAtom('d', 430, 78, label: 'CH2'),
    MAtom('i', 496, 78, label: 'I'),
  ],
  bonds: const [
    MBond('m', 'c'),
    MBond('c', 'cl'),
    MBond('n', 'd'),
    MBond('d', 'i'),
  ],
  arrows: const [
    MArrow(Offset(240, 78), Offset(310, 78), label: 'NaI, acetone'),
  ],
);

final MolSketch swartsScheme = MolSketch(
  name: 'bromoethane converted to fluoroethane with silver fluoride',
  width: 500,
  height: 150,
  atoms: const [
    MAtom('m', 48, 78, label: 'CH3'),
    MAtom('c', 118, 78, label: 'CH2'),
    MAtom('br', 190, 78, label: 'Br'),
    MAtom('n', 360, 78, label: 'CH3'),
    MAtom('d', 430, 78, label: 'CH2'),
    MAtom('f', 492, 78, label: 'F'),
  ],
  bonds: const [
    MBond('m', 'c'),
    MBond('c', 'br'),
    MBond('n', 'd'),
    MBond('d', 'f'),
  ],
  arrows: const [
    MArrow(Offset(240, 78), Offset(310, 78), label: 'AgF'),
  ],
);

final MolSketch sandmeyerScheme = _sandmeyer();

MolSketch _sandmeyer() {
  const left = Offset(110, 100);
  const right = Offset(400, 100);
  const radius = 38.0;
  return MolSketch(
    name: 'benzenediazonium chloride treated with copper(I) chloride',
    width: 520,
    height: 230,
    atoms: [
      ..._ringAtoms('l', left, radius),
      MAtom('n2', left.dx, left.dy - radius - 40, label: 'N2', charge: '+'),
      ..._ringAtoms('r', right, radius),
      MAtom('cl', right.dx, right.dy - radius - 40, label: 'Cl'),
    ],
    bonds: [
      ..._ringBonds('l'),
      MBond('l0', 'n2'),
      ..._ringBonds('r'),
      MBond('r0', 'cl'),
    ],
    rings: [
      RingMark(left, radius * 0.55),
      RingMark(right, radius * 0.55),
    ],
    arrows: const [
      MArrow(Offset(230, 100), Offset(300, 100), label: 'CuCl'),
    ],
  );
}
