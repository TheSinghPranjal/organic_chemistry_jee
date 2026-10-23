import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for aldehydes and ketones.

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

/// Benzoyl chloride hydrogenated to benzaldehyde.
final MolSketch rosenmund = MolSketch(
  name: 'benzoyl chloride hydrogenated to benzaldehyde',
  width: 680,
  height: 250,
  atoms: [
    ..._ringAtoms('l', const Offset(120, 140), 40),
    MAtom('sl', _onRing(const Offset(120, 140), 40, 46).dx, _onRing(const Offset(120, 140), 40, 46).dy, label: 'COCl'),
    ..._ringAtoms('r', const Offset(500, 140), 40),
    MAtom('sr', _onRing(const Offset(500, 140), 40, 46).dx, _onRing(const Offset(500, 140), 40, 46).dy, label: 'CHO'),
  ],
  bonds: [
    ..._ringBonds('l'),
    const MBond('l0', 'sl'),
    ..._ringBonds('r'),
    const MBond('r0', 'sr'),
  ],
  rings: const [RingMark(Offset(120, 140), 22), RingMark(Offset(500, 140), 22)],
  arrows: const [MArrow(Offset(250, 140), Offset(360, 140), label: 'H2, Pd/BaSO4')],
);

/// Ethanal condensed and dehydrated to but-2-enal.
final MolSketch aldolCroton = MolSketch(
  name: 'ethanal heated with dilute base to but-2-enal',
  width: 700,
  height: 220,
  atoms: const [
    MAtom('me', 48, 120, label: 'CH3'),
    MAtom('c', 120, 120),
    MAtom('o', 120, 58, label: 'O'),
    MAtom('pme', 400, 120, label: 'CH3'),
    MAtom('a', 470, 120),
    MAtom('b', 540, 120),
    MAtom('d', 610, 120),
    MAtom('po', 610, 58, label: 'O'),
  ],
  bonds: const [
    MBond('me', 'c'),
    MBond('c', 'o', order: 2),
    MBond('pme', 'a'),
    MBond('a', 'b', order: 2),
    MBond('b', 'd'),
    MBond('d', 'po', order: 2),
  ],
  arrows: const [MArrow(Offset(190, 120), Offset(330, 120), label: 'dilute NaOH, heat')],
);

/// Benzaldehyde disproportionated by concentrated base.
final MolSketch cannizzaro = MolSketch(
  name: 'benzaldehyde with concentrated base giving benzyl alcohol and benzoate',
  width: 640,
  height: 340,
  atoms: [
    ..._ringAtoms('l', const Offset(110, 170), 36),
    MAtom('sl', _onRing(const Offset(110, 170), 36, 44).dx, _onRing(const Offset(110, 170), 36, 44).dy, label: 'CHO'),
    ..._ringAtoms('a', const Offset(470, 95), 34),
    MAtom('sa', _onRing(const Offset(470, 95), 34, 44).dx, _onRing(const Offset(470, 95), 34, 44).dy, label: 'CH2OH'),
    ..._ringAtoms('b', const Offset(470, 255), 34),
    MAtom(
      'sb',
      _onRing(const Offset(470, 255), 34, 44).dx,
      _onRing(const Offset(470, 255), 34, 44).dy,
      label: 'CO2',
      charge: '−',
    ),
  ],
  bonds: [
    ..._ringBonds('l'),
    const MBond('l0', 'sl'),
    ..._ringBonds('a'),
    const MBond('a0', 'sa'),
    ..._ringBonds('b'),
    const MBond('b0', 'sb'),
  ],
  rings: const [
    RingMark(Offset(110, 170), 20),
    RingMark(Offset(470, 95), 18),
    RingMark(Offset(470, 255), 18),
  ],
  arrows: const [MArrow(Offset(230, 170), Offset(330, 170), label: 'conc. NaOH')],
);

/// Benzaldehyde condensed with propanone to the enone.
final MolSketch claisenSchmidt = MolSketch(
  name: 'benzaldehyde condensed with propanone to 4-phenylbut-3-en-2-one',
  width: 760,
  height: 230,
  atoms: const [
    MAtom('ph', 46, 130, label: 'Ph'),
    MAtom('cho', 120, 130, label: 'CHO'),
    MAtom('pph', 430, 130, label: 'Ph'),
    MAtom('a', 500, 130),
    MAtom('b', 570, 130),
    MAtom('c', 640, 130),
    MAtom('o', 640, 68, label: 'O'),
    MAtom('me', 710, 130, label: 'CH3'),
  ],
  bonds: const [
    MBond('ph', 'cho'),
    MBond('pph', 'a'),
    MBond('a', 'b', order: 2),
    MBond('b', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'me'),
  ],
  arrows: const [MArrow(Offset(190, 130), Offset(350, 130), label: 'excess propanone, OH-')],
);

/// Phenyl migrates in the oxidation of acetophenone to phenyl acetate.
final MolSketch baeyerVilliger = MolSketch(
  name: 'acetophenone oxidised by a peracid to phenyl ethanoate',
  width: 720,
  height: 230,
  atoms: const [
    MAtom('ph', 40, 130, label: 'Ph'),
    MAtom('c', 120, 130),
    MAtom('o', 120, 68, label: 'O'),
    MAtom('me', 200, 130, label: 'CH3'),
    MAtom('pph', 400, 130, label: 'Ph'),
    MAtom('bridge', 470, 130, label: 'O'),
    MAtom('c2', 550, 130),
    MAtom('o2', 550, 68, label: 'O'),
    MAtom('me2', 630, 130, label: 'CH3'),
  ],
  bonds: const [
    MBond('ph', 'c'),
    MBond('c', 'o', order: 2),
    MBond('c', 'me'),
    MBond('pph', 'bridge'),
    MBond('bridge', 'c2'),
    MBond('c2', 'o2', order: 2),
    MBond('c2', 'me2'),
  ],
  arrows: const [MArrow(Offset(260, 130), Offset(340, 130), label: 'mCPBA')],
);

/// Cyclohexanone methylenated by a Wittig ylide.
final MolSketch wittigMethylene = MolSketch(
  name: 'cyclohexanone and a methylene ylide giving methylenecyclohexane',
  width: 680,
  height: 250,
  atoms: [
    ..._ringAtoms('l', const Offset(130, 140), 42),
    MAtom('lo', _onRing(const Offset(130, 140), 42, 40).dx, _onRing(const Offset(130, 140), 42, 40).dy, label: 'O'),
    ..._ringAtoms('r', const Offset(500, 140), 42),
    MAtom('ch', _onRing(const Offset(500, 140), 42, 42).dx, _onRing(const Offset(500, 140), 42, 42).dy, label: 'CH2'),
  ],
  bonds: [
    ..._ringBonds('l'),
    const MBond('l0', 'lo', order: 2),
    ..._ringBonds('r'),
    const MBond('r0', 'ch', order: 2),
  ],
  arrows: const [MArrow(Offset(250, 140), Offset(360, 140), label: 'Ph3P=CH2')],
);
