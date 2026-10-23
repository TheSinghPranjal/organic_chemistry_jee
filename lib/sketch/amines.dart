import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for amines.

Offset _onRing(Offset center, double radius, int index, [double extra = 0]) {
  final angle = -math.pi / 2 + index * math.pi / 3;
  final reach = radius + extra;
  return Offset(center.dx + reach * math.cos(angle), center.dy + reach * math.sin(angle));
}

List<MAtom> _ringAtoms(String prefix, Offset center, double radius) {
  return [
    for (var i = 0; i < 6; i++)
      MAtom('$prefix$i', _onRing(center, radius, i).dx, _onRing(center, radius, i).dy),
  ];
}

List<MBond> _ringBonds(String prefix) {
  return [for (var i = 0; i < 6; i++) MBond('$prefix$i', '$prefix${(i + 1) % 6}')];
}

/// Phthalimide salt alkylated, then cleaved, to a primary amine.
final MolSketch gabrielAmine = MolSketch(
  name: 'phthalimide salt and 1-bromopropane giving propan-1-amine',
  width: 760,
  height: 250,
  atoms: const [
    MAtom('n', 110, 120, label: 'N', charge: '−'),
    MAtom('c1', 60, 68),
    MAtom('o1', 24, 28, label: 'O'),
    MAtom('c2', 168, 68),
    MAtom('o2', 220, 28, label: 'O'),
    MAtom('pnh', 500, 140, label: 'NH2'),
    MAtom('a', 575, 140, label: 'CH2'),
    MAtom('b', 650, 140, label: 'CH2'),
    MAtom('c', 725, 140, label: 'CH3'),
  ],
  bonds: const [
    MBond('n', 'c1'),
    MBond('c1', 'o1', order: 2),
    MBond('n', 'c2'),
    MBond('c2', 'o2', order: 2),
    MBond('pnh', 'a'),
    MBond('a', 'b'),
    MBond('b', 'c'),
  ],
  notes: const [MNote(110, 175, 'phthalimide')],
  arrows: const [MArrow(Offset(290, 130), Offset(440, 130), label: 'PrBr, then N2H4')],
);

/// Primary amine to an isocyanide. The carbon of the NC group is terminal.
final MolSketch carbylamine = MolSketch(
  name: 'ethanamine with chloroform and base giving ethyl isocyanide',
  width: 740,
  height: 220,
  atoms: const [
    MAtom('me', 36, 120, label: 'CH3'),
    MAtom('ch2', 115, 120, label: 'CH2'),
    MAtom('nh', 200, 120, label: 'NH2'),
    MAtom('pme', 450, 120, label: 'CH3'),
    MAtom('pch', 530, 120, label: 'CH2'),
    MAtom('pn', 610, 120, label: 'N'),
    MAtom('pc', 690, 120, label: 'C'),
  ],
  bonds: const [
    MBond('me', 'ch2'),
    MBond('ch2', 'nh'),
    MBond('pme', 'pch'),
    MBond('pch', 'pn'),
    MBond('pn', 'pc', order: 3),
  ],
  arrows: const [MArrow(Offset(270, 120), Offset(390, 120), label: 'CHCl3, KOH')],
);

/// Arenediazonium salt to the aryl chloride.
final MolSketch sandmeyer = MolSketch(
  name: 'benzenediazonium salt and copper(I) chloride giving chlorobenzene',
  width: 700,
  height: 280,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 160), 40),
    MAtom(
      'n2',
      _onRing(const Offset(140, 160), 40, 0, 42).dx,
      _onRing(const Offset(140, 160), 40, 0, 42).dy,
      label: 'N2+',
    ),
    ..._ringAtoms('r', const Offset(530, 160), 40),
    MAtom(
      'cl',
      _onRing(const Offset(530, 160), 40, 0, 42).dx,
      _onRing(const Offset(530, 160), 40, 0, 42).dy,
      label: 'Cl',
    ),
  ],
  bonds: [
    ..._ringBonds('l'),
    const MBond('l0', 'n2'),
    ..._ringBonds('r'),
    const MBond('r0', 'cl'),
  ],
  arrows: const [MArrow(Offset(250, 170), Offset(400, 170), label: 'CuCl')],
);

/// Aldehyde plus a primary amine, then a selective hydride.
final MolSketch reductiveAmination = MolSketch(
  name: 'ethanal and methylamine giving N-methylethanamine',
  width: 760,
  height: 230,
  atoms: const [
    MAtom('me', 36, 130, label: 'CH3'),
    MAtom('ch', 110, 130, label: 'CH'),
    MAtom('o', 110, 68, label: 'O'),
    MAtom('h', 185, 130, label: 'H'),
    MAtom('pme', 430, 140, label: 'CH3'),
    MAtom('pch', 510, 140, label: 'CH2'),
    MAtom('nh', 590, 140, label: 'NH'),
    MAtom('nme', 680, 140, label: 'CH3'),
  ],
  bonds: const [
    MBond('me', 'ch'),
    MBond('ch', 'o', order: 2),
    MBond('ch', 'h'),
    MBond('pme', 'pch'),
    MBond('pch', 'nh'),
    MBond('nh', 'nme'),
  ],
  arrows: const [MArrow(Offset(250, 130), Offset(380, 130), label: 'MeNH2, NaBH3CN')],
);

/// Diazonium ion couples para to a phenol.
final MolSketch azoCoupling = MolSketch(
  name: 'benzenediazonium salt and phenol giving a para hydroxy azo compound',
  width: 780,
  height: 230,
  atoms: const [
    MAtom('ph', 40, 130, label: 'Ph'),
    MAtom('n2', 130, 130, label: 'N2+'),
    MAtom('pph', 400, 140, label: 'Ph'),
    MAtom('n1', 480, 140, label: 'N'),
    MAtom('n2b', 550, 140, label: 'N'),
    MAtom('ring', 640, 140, label: 'C6H4'),
    MAtom('oh', 730, 140, label: 'OH'),
  ],
  bonds: const [
    MBond('ph', 'n2'),
    MBond('pph', 'n1'),
    MBond('n1', 'n2b', order: 2),
    MBond('n2b', 'ring'),
    MBond('ring', 'oh'),
  ],
  notes: const [MNote(680, 48, 'para')],
  arrows: const [MArrow(Offset(200, 130), Offset(340, 130), label: 'PhOH, base')],
);

/// Protected aniline nitrated at the para position.
final MolSketch acetanilideNitration = MolSketch(
  name: 'acetanilide nitrated to the para nitro amide',
  width: 720,
  height: 340,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 150), 40),
    MAtom(
      'nh',
      _onRing(const Offset(140, 150), 40, 0, 46).dx,
      _onRing(const Offset(140, 150), 40, 0, 46).dy,
      label: 'NHAc',
    ),
    ..._ringAtoms('r', const Offset(530, 150), 40),
    MAtom(
      'pnh',
      _onRing(const Offset(530, 150), 40, 0, 46).dx,
      _onRing(const Offset(530, 150), 40, 0, 46).dy,
      label: 'NHAc',
    ),
    MAtom(
      'no',
      _onRing(const Offset(530, 150), 40, 3, 44).dx,
      _onRing(const Offset(530, 150), 40, 3, 44).dy,
      label: 'NO2',
    ),
  ],
  bonds: [
    ..._ringBonds('l'),
    const MBond('l0', 'nh'),
    ..._ringBonds('r'),
    const MBond('r0', 'pnh'),
    const MBond('r3', 'no'),
  ],
  notes: const [MNote(530, 308, 'para')],
  arrows: const [MArrow(Offset(250, 170), Offset(390, 170), label: 'HNO3')],
);
