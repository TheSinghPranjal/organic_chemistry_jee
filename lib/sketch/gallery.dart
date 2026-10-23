import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

Offset _polar(Offset center, double radius, double angle) {
  return Offset(
    center.dx + radius * math.cos(angle),
    center.dy + radius * math.sin(angle),
  );
}

MolSketch _ring({
  required String name,
  required Offset center,
  required double radius,
  required int sides,
  double start = -math.pi / 2,
  bool aromatic = false,
  Map<int, String> labels = const {},
  Map<int, String> charges = const {},
  Map<int, bool> radicals = const {},
  Set<int> doubleFrom = const {},
  List<MAtom> extraAtoms = const [],
  List<MBond> extraBonds = const [],
  List<MNote> notes = const [],
  String? centerMark,
  required double width,
  required double height,
}) {
  final atoms = <MAtom>[];
  final bonds = <MBond>[];
  for (var i = 0; i < sides; i++) {
    final point = _polar(center, radius, start + i * 2 * math.pi / sides);
    atoms.add(
      MAtom(
        'c$i',
        point.dx,
        point.dy,
        label: labels[i] ?? '',
        charge: charges[i],
        radical: radicals[i] ?? false,
      ),
    );
  }
  for (var i = 0; i < sides; i++) {
    final next = (i + 1) % sides;
    final order = aromatic ? 1 : (doubleFrom.contains(i) ? 2 : 1);
    bonds.add(MBond('c$i', 'c$next', order: order));
  }
  atoms.addAll(extraAtoms);
  bonds.addAll(extraBonds);
  final allNotes = [
    ...notes,
    if (centerMark != null) MNote(center.dx, center.dy, centerMark),
  ];
  return MolSketch(
    name: name,
    atoms: atoms,
    bonds: bonds,
    notes: allNotes,
    rings: aromatic ? [RingMark(center, radius * 0.58)] : const [],
    width: width,
    height: height,
  );
}

final MolSketch propyne = MolSketch(
  name: 'propyne',
  width: 250,
  height: 78,
  atoms: const [
    MAtom('m', 28, 40, label: 'CH3'),
    MAtom('c1', 100, 40),
    MAtom('c2', 168, 40),
    MAtom('h', 214, 40, label: 'H'),
  ],
  bonds: const [
    MBond('m', 'c1'),
    MBond('c1', 'c2', order: 3),
    MBond('c2', 'h'),
  ],
);

final MolSketch benzylCation = _ring(
  name: 'benzyl cation',
  center: const Offset(90, 108),
  radius: 40,
  sides: 6,
  aromatic: true,
  extraAtoms: const [
    MAtom('ch2', 90, 28, label: 'CH2', charge: '+'),
  ],
  extraBonds: const [MBond('c0', 'ch2')],
  width: 180,
  height: 170,
);

final MolSketch cyclopentadienylAnion = _ring(
  name: 'cyclopentadienyl anion',
  center: const Offset(80, 84),
  radius: 42,
  sides: 5,
  aromatic: true,
  centerMark: '−',
  width: 160,
  height: 170,
);

final MolSketch acetateResonance = MolSketch(
  name: 'acetate resonance',
  width: 340,
  height: 120,
  atoms: const [
    MAtom('a1', 24, 62, label: 'CH3'),
    MAtom('a2', 78, 62),
    MAtom('a3', 78, 24, label: 'O'),
    MAtom('a4', 128, 92, label: 'O', charge: '−'),
    MAtom('b1', 206, 62, label: 'CH3'),
    MAtom('b2', 260, 62),
    MAtom('b3', 260, 24, label: 'O', charge: '−'),
    MAtom('b4', 310, 92, label: 'O'),
  ],
  bonds: const [
    MBond('a1', 'a2'),
    MBond('a2', 'a3', order: 2),
    MBond('a2', 'a4'),
    MBond('b1', 'b2'),
    MBond('b2', 'b3'),
    MBond('b2', 'b4', order: 2),
  ],
  notes: const [MNote(168, 62, '↔')],
);

final MolSketch allylRadical = MolSketch(
  name: 'allyl radical',
  width: 250,
  height: 80,
  atoms: const [
    MAtom('c1', 36, 40, label: 'H2C'),
    MAtom('c2', 118, 40, label: 'CH'),
    MAtom('c3', 200, 40, label: 'H2C', radical: true),
  ],
  bonds: const [
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'c3'),
  ],
);

final MolSketch pyrroleAndPyridine = _pairRings();

MolSketch _pairRings() {
  final pyrrole = _ring(
    name: 'pyrrole',
    center: const Offset(78, 78),
    radius: 40,
    sides: 5,
    start: math.pi / 2,
    labels: const {0: 'NH'},
    doubleFrom: const {1, 3},
    width: 160,
    height: 160,
  );
  final pyridine = _ring(
    name: 'pyridine',
    center: const Offset(250, 78),
    radius: 40,
    sides: 6,
    start: math.pi / 2,
    aromatic: true,
    labels: const {0: 'N'},
    width: 160,
    height: 160,
  );
  return MolSketch(
    name: 'pyrrole and pyridine',
    width: 340,
    height: 190,
    atoms: [
      ...pyrrole.atoms,
      ...pyridine.atoms.map((atom) => MAtom('p${atom.id}', atom.x, atom.y, label: atom.label, charge: atom.charge)),
    ],
    bonds: [
      ...pyrrole.bonds,
      ...pyridine.bonds.map((bond) => MBond('p${bond.a}', 'p${bond.b}', order: bond.order)),
    ],
    rings: pyridine.rings,
    notes: const [
      MNote(78, 162, 'pyrrole'),
      MNote(250, 162, 'pyridine'),
    ],
  );
}

final MolSketch butadiene = MolSketch(
  name: 'buta-1,3-diene',
  width: 240,
  height: 110,
  atoms: const [
    MAtom('c1', 28, 72),
    MAtom('c2', 88, 28),
    MAtom('c3', 148, 72),
    MAtom('c4', 208, 28),
  ],
  bonds: const [
    MBond('c1', 'c2', order: 2),
    MBond('c2', 'c3'),
    MBond('c3', 'c4', order: 2),
  ],
  notes: const [MNote(118, 96, 'buta-1,3-diene')],
);

final MolSketch neopentylCation = MolSketch(
  name: 'neopentyl-type cation',
  width: 280,
  height: 150,
  atoms: const [
    MAtom('q', 96, 78, label: 'C'),
    MAtom('up', 96, 28, label: 'CH3'),
    MAtom('left', 34, 118, label: 'CH3'),
    MAtom('right', 158, 118, label: 'CH3'),
    MAtom('ch2', 230, 78, label: 'CH2', charge: '+'),
  ],
  bonds: const [
    MBond('q', 'up'),
    MBond('q', 'left'),
    MBond('q', 'right'),
    MBond('q', 'ch2'),
  ],
);

final MolSketch tertButylCation = MolSketch(
  name: 'tert-butyl cation',
  width: 200,
  height: 150,
  atoms: const [
    MAtom('c', 100, 78, label: 'C', charge: '+'),
    MAtom('up', 100, 26, label: 'CH3'),
    MAtom('left', 36, 120, label: 'CH3'),
    MAtom('right', 164, 120, label: 'CH3'),
  ],
  bonds: const [
    MBond('c', 'up'),
    MBond('c', 'left'),
    MBond('c', 'right'),
  ],
);

final MolSketch methylCation = MolSketch(
  name: 'methyl cation',
  width: 130,
  height: 110,
  atoms: const [
    MAtom('c', 64, 58, label: 'C', charge: '+'),
    MAtom('h1', 64, 20, label: 'H'),
    MAtom('h2', 22, 86, label: 'H'),
    MAtom('h3', 106, 86, label: 'H'),
  ],
  bonds: const [
    MBond('c', 'h1'),
    MBond('c', 'h2'),
    MBond('c', 'h3'),
  ],
);

final MolSketch ethylCation = MolSketch(
  name: 'ethyl cation',
  width: 180,
  height: 80,
  atoms: const [
    MAtom('a', 48, 40, label: 'CH3'),
    MAtom('b', 130, 40, label: 'CH2', charge: '+'),
  ],
  bonds: const [MBond('a', 'b')],
);

final MolSketch isopropylCation = MolSketch(
  name: 'isopropyl cation',
  width: 190,
  height: 130,
  atoms: const [
    MAtom('c', 96, 64, label: 'CH', charge: '+'),
    MAtom('l', 30, 26, label: 'CH3'),
    MAtom('r', 162, 26, label: 'CH3'),
    MAtom('h', 96, 110, label: 'H'),
  ],
  bonds: const [
    MBond('c', 'l'),
    MBond('c', 'r'),
    MBond('c', 'h'),
  ],
);

MolSketch _dihalo({
  required String name,
  required String leftUp,
  required String leftDown,
  required String rightUp,
  required String rightDown,
}) {
  return MolSketch(
    name: name,
    width: 190,
    height: 120,
    atoms: [
      MAtom('c1', 70, 60),
      MAtom('c2', 122, 60),
      MAtom('lu', 28, 24, label: leftUp),
      MAtom('ld', 28, 98, label: leftDown),
      MAtom('ru', 164, 24, label: rightUp),
      MAtom('rd', 164, 98, label: rightDown),
    ],
    bonds: const [
      MBond('c1', 'c2', order: 2),
      MBond('c1', 'lu'),
      MBond('c1', 'ld'),
      MBond('c2', 'ru'),
      MBond('c2', 'rd'),
    ],
  );
}

final MolSketch cisDichloroethene = _dihalo(
  name: 'cis-1,2-dichloroethene',
  leftUp: 'Cl',
  rightUp: 'Cl',
  leftDown: 'H',
  rightDown: 'H',
);

final MolSketch transDichloroethene = _dihalo(
  name: 'trans-1,2-dichloroethene',
  leftUp: 'Cl',
  rightUp: 'H',
  leftDown: 'H',
  rightDown: 'Cl',
);

final MolSketch gemDichloroethene = _dihalo(
  name: '1,1-dichloroethene',
  leftUp: 'Cl',
  leftDown: 'Cl',
  rightUp: 'H',
  rightDown: 'H',
);

final MolSketch cisDifluoroethene = _dihalo(
  name: 'cis-1,2-difluoroethene',
  leftUp: 'F',
  rightUp: 'F',
  leftDown: 'H',
  rightDown: 'H',
);
