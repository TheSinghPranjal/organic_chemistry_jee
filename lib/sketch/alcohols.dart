import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for alcohols, phenols, and ethers.

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

final MolSketch williamsonAnisole = _twoRings(
  name: 'sodium phenoxide and iodomethane giving anisole',
  leftLabel: 'O',
  leftCharge: '−',
  rightLabel: 'OCH3',
  arrow: 'CH3I',
);

final MolSketch reimerTiemann = _orthoProduct(
  name: 'phenol heated with chloroform and base to 2-hydroxybenzaldehyde',
  leftLabel: 'OH',
  rightLabels: const {0: 'OH', 1: 'CHO'},
  arrow: 'CHCl3, KOH',
);

final MolSketch kolbeSchmitt = _orthoProduct(
  name: 'sodium phenoxide and carbon dioxide giving 2-hydroxybenzoic acid',
  leftLabel: 'O',
  leftCharge: '−',
  rightLabels: const {0: 'OH', 1: 'CO2H'},
  arrow: 'CO2, then H+',
);

MolSketch _twoRings({
  required String name,
  required String leftLabel,
  required String rightLabel,
  required String arrow,
  String? leftCharge,
}) {
  const left = Offset(120, 120);
  const right = Offset(430, 120);
  const radius = 40.0;
  final ohL = _onRing(left, radius, 0, 40);
  final ohR = _onRing(right, radius, 0, 42);
  return MolSketch(
    name: name,
    width: 560,
    height: 230,
    atoms: [
      ..._ringAtoms('l', left, radius),
      MAtom('sl', ohL.dx, ohL.dy, label: leftLabel, charge: leftCharge),
      ..._ringAtoms('r', right, radius),
      MAtom('sr', ohR.dx, ohR.dy, label: rightLabel),
    ],
    bonds: [
      ..._ringBonds('l'),
      MBond('l0', 'sl'),
      ..._ringBonds('r'),
      MBond('r0', 'sr'),
    ],
    rings: [RingMark(left, radius * 0.55), RingMark(right, radius * 0.55)],
    arrows: [MArrow(const Offset(250, 120), const Offset(310, 120), label: arrow)],
  );
}

MolSketch _orthoProduct({
  required String name,
  required String leftLabel,
  required Map<int, String> rightLabels,
  required String arrow,
  String? leftCharge,
}) {
  const left = Offset(120, 130);
  const right = Offset(450, 130);
  const radius = 40.0;
  final atoms = <MAtom>[
    ..._ringAtoms('l', left, radius),
    ..._ringAtoms('r', right, radius),
  ];
  final bonds = <MBond>[
    ..._ringBonds('l'),
    ..._ringBonds('r'),
  ];
  final leftSub = _onRing(left, radius, 0, 42);
  atoms.add(MAtom('sl', leftSub.dx, leftSub.dy, label: leftLabel, charge: leftCharge));
  bonds.add(const MBond('l0', 'sl'));
  for (final entry in rightLabels.entries) {
    final point = _onRing(right, radius, entry.key, 46);
    final id = 's${entry.key}';
    atoms.add(MAtom(id, point.dx, point.dy, label: entry.value));
    bonds.add(MBond('r${entry.key}', id));
  }
  return MolSketch(
    name: name,
    width: 600,
    height: 270,
    atoms: atoms,
    bonds: bonds,
    rings: [RingMark(left, radius * 0.55), RingMark(right, radius * 0.55)],
    arrows: [MArrow(const Offset(250, 130), const Offset(320, 130), label: arrow)],
  );
}

final MolSketch pinacolRearrangement = MolSketch(
  name: 'pinacol rearranged by acid to 3,3-dimethylbutan-2-one',
  width: 680,
  height: 230,
  atoms: const [
    MAtom('c1', 130, 112),
    MAtom('c2', 200, 112),
    MAtom('o1', 70, 112, label: 'OH'),
    MAtom('o2', 260, 112, label: 'OH'),
    MAtom('a', 130, 52, label: 'CH3'),
    MAtom('b', 130, 172, label: 'CH3'),
    MAtom('c', 200, 52, label: 'CH3'),
    MAtom('d', 200, 172, label: 'CH3'),
    MAtom('q', 470, 112),
    MAtom('q1', 470, 50, label: 'CH3'),
    MAtom('q2', 408, 168, label: 'CH3'),
    MAtom('q3', 532, 168, label: 'CH3'),
    MAtom('co', 560, 112),
    MAtom('o', 620, 64, label: 'O'),
    MAtom('me', 620, 164, label: 'CH3'),
  ],
  bonds: const [
    MBond('c1', 'c2'),
    MBond('c1', 'o1'),
    MBond('c2', 'o2'),
    MBond('c1', 'a'),
    MBond('c1', 'b'),
    MBond('c2', 'c'),
    MBond('c2', 'd'),
    MBond('q', 'q1'),
    MBond('q', 'q2'),
    MBond('q', 'q3'),
    MBond('q', 'co'),
    MBond('co', 'o', order: 2),
    MBond('co', 'me'),
  ],
  arrows: const [
    MArrow(Offset(310, 112), Offset(370, 112), label: 'H2SO4'),
  ],
);

final MolSketch dimethylbutanol = MolSketch(
  name: '3,3-dimethylbutan-2-ol dehydrated to 2,3-dimethylbut-2-ene',
  width: 640,
  height: 220,
  atoms: const [
    MAtom('c1', 48, 100, label: 'CH3'),
    MAtom('c2', 118, 100),
    MAtom('oh', 118, 42, label: 'OH'),
    MAtom('c3', 196, 100),
    MAtom('m1', 196, 42, label: 'CH3'),
    MAtom('m2', 250, 156, label: 'CH3'),
    MAtom('m3', 142, 156, label: 'CH3'),
    MAtom('p1', 430, 58, label: 'CH3'),
    MAtom('p2', 430, 142, label: 'CH3'),
    MAtom('d1', 490, 100),
    MAtom('d2', 550, 100),
    MAtom('p3', 610, 58, label: 'CH3'),
    MAtom('p4', 610, 142, label: 'CH3'),
  ],
  bonds: const [
    MBond('c1', 'c2'),
    MBond('c2', 'oh'),
    MBond('c2', 'c3'),
    MBond('c3', 'm1'),
    MBond('c3', 'm2'),
    MBond('c3', 'm3'),
    MBond('p1', 'd1'),
    MBond('p2', 'd1'),
    MBond('d1', 'd2', order: 2),
    MBond('d2', 'p3'),
    MBond('d2', 'p4'),
  ],
  arrows: const [
    MArrow(Offset(310, 100), Offset(380, 100), label: 'H2SO4, heat'),
  ],
);

final MolSketch epoxideAcid = MolSketch(
  name: 'propene oxide opened by methanol and acid to 2-methoxypropan-1-ol',
  width: 560,
  height: 210,
  atoms: const [
    MAtom('c1', 70, 110, label: 'CH2'),
    MAtom('c2', 150, 110, label: 'CH'),
    MAtom('o', 110, 52, label: 'O'),
    MAtom('me', 210, 110, label: 'CH3'),
    MAtom('pc', 400, 100, label: 'CH'),
    MAtom('pm', 400, 42, label: 'CH3'),
    MAtom('po', 480, 100, label: 'OCH3'),
    MAtom('ph', 340, 158, label: 'CH2OH'),
  ],
  bonds: const [
    MBond('c1', 'c2'),
    MBond('c1', 'o'),
    MBond('c2', 'o'),
    MBond('c2', 'me'),
    MBond('pc', 'pm'),
    MBond('pc', 'po'),
    MBond('pc', 'ph'),
  ],
  arrows: const [
    MArrow(Offset(260, 100), Offset(310, 100), label: 'MeOH, H+'),
  ],
);

final MolSketch epoxideBase = MolSketch(
  name: 'propene oxide opened by methoxide to 1-methoxypropan-2-ol',
  width: 580,
  height: 210,
  atoms: const [
    MAtom('c1', 70, 110, label: 'CH2'),
    MAtom('c2', 150, 110, label: 'CH'),
    MAtom('o', 110, 52, label: 'O'),
    MAtom('me', 210, 110, label: 'CH3'),
    MAtom('pc', 420, 100, label: 'CH'),
    MAtom('pm', 420, 42, label: 'CH3'),
    MAtom('po', 500, 100, label: 'OH'),
    MAtom('ph', 340, 158, label: 'CH2OCH3'),
  ],
  bonds: const [
    MBond('c1', 'c2'),
    MBond('c1', 'o'),
    MBond('c2', 'o'),
    MBond('c2', 'me'),
    MBond('pc', 'pm'),
    MBond('pc', 'po'),
    MBond('pc', 'ph'),
  ],
  arrows: const [
    MArrow(Offset(260, 100), Offset(310, 100), label: 'MeO-'),
  ],
);
