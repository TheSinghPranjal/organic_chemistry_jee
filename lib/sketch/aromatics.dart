import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'mol.dart';

/// Reaction drawings for aromatic hydrocarbons.

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

/// Kekulé benzene: double bonds on alternate edges.
List<MBond> _kekule(String prefix) {
  return [
    for (var i = 0; i < 6; i++) MBond('$prefix$i', '$prefix${(i + 1) % 6}', order: i.isEven ? 2 : 1),
  ];
}

/// Cyclohexa-1,4-diene: doubles on edges 0–1 and 3–4.
List<MBond> _diene14(String prefix) {
  return [
    for (var i = 0; i < 6; i++) MBond('$prefix$i', '$prefix${(i + 1) % 6}', order: (i == 0 || i == 3) ? 2 : 1),
  ];
}

/// Mixed-acid nitration of benzene.
final MolSketch nitrationBenzene = MolSketch(
  name: 'benzene nitrated to nitrobenzene',
  width: 700,
  height: 300,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 170), 42),
    ..._ringAtoms('r', const Offset(530, 170), 42),
    MAtom(
      'no',
      _onRing(const Offset(530, 170), 42, 0, 50).dx,
      _onRing(const Offset(530, 170), 42, 0, 50).dy,
      label: 'NO2',
    ),
  ],
  bonds: [
    ..._kekule('l'),
    ..._kekule('r'),
    const MBond('r0', 'no'),
  ],
  arrows: const [MArrow(Offset(250, 180), Offset(390, 180), label: 'HNO3, H2SO4')],
);

/// Primary alkyl halide rearranges before it alkylates the ring.
final MolSketch fcRearrange = MolSketch(
  name: 'benzene and 1-chloropropane giving isopropylbenzene',
  width: 720,
  height: 300,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 175), 42),
    ..._ringAtoms('r', const Offset(540, 175), 42),
    MAtom(
      'rgroup',
      _onRing(const Offset(540, 175), 42, 0, 52).dx,
      _onRing(const Offset(540, 175), 42, 0, 52).dy,
      label: 'CHMe2',
    ),
  ],
  bonds: [
    ..._kekule('l'),
    ..._kekule('r'),
    const MBond('r0', 'rgroup'),
  ],
  arrows: const [MArrow(Offset(240, 185), Offset(400, 185), label: 'n-PrCl, AlCl3')],
);

/// Acyl chloride gives a ketone. The acyl group does not rearrange.
final MolSketch fcAcylation = MolSketch(
  name: 'benzene and ethanoyl chloride giving acetophenone',
  width: 720,
  height: 300,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 175), 42),
    ..._ringAtoms('r', const Offset(540, 175), 42),
    MAtom(
      'acyl',
      _onRing(const Offset(540, 175), 42, 0, 52).dx,
      _onRing(const Offset(540, 175), 42, 0, 52).dy,
      label: 'COMe',
    ),
  ],
  bonds: [
    ..._kekule('l'),
    ..._kekule('r'),
    const MBond('r0', 'acyl'),
  ],
  arrows: const [MArrow(Offset(240, 185), Offset(400, 185), label: 'MeCOCl, AlCl3')],
);

/// Any benzylic hydrogen is chewed down to the carboxylic acid.
final MolSketch sideChainOxidation = MolSketch(
  name: 'ethylbenzene oxidised to benzoic acid',
  width: 720,
  height: 300,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 175), 42),
    MAtom(
      'et',
      _onRing(const Offset(140, 175), 42, 0, 50).dx,
      _onRing(const Offset(140, 175), 42, 0, 50).dy,
      label: 'Et',
    ),
    ..._ringAtoms('r', const Offset(540, 175), 42),
    MAtom(
      'acid',
      _onRing(const Offset(540, 175), 42, 0, 52).dx,
      _onRing(const Offset(540, 175), 42, 0, 52).dy,
      label: 'CO2H',
    ),
  ],
  bonds: [
    ..._kekule('l'),
    const MBond('l0', 'et'),
    ..._kekule('r'),
    const MBond('r0', 'acid'),
  ],
  arrows: const [MArrow(Offset(250, 185), Offset(390, 185), label: 'hot KMnO4')],
);

/// Dissolving metal reduction stops at the non-conjugated diene.
final MolSketch birchBenzene = MolSketch(
  name: 'benzene reduced to cyclohexa-1,4-diene',
  width: 720,
  height: 310,
  atoms: [
    ..._ringAtoms('l', const Offset(150, 150), 42),
    ..._ringAtoms('r', const Offset(540, 150), 42),
  ],
  bonds: [
    ..._kekule('l'),
    ..._diene14('r'),
  ],
  notes: const [MNote(540, 268, '1,4-diene')],
  arrows: const [MArrow(Offset(250, 160), Offset(400, 160), label: 'Na, NH3, EtOH')],
);

/// Light puts the halogen on the side chain, not on the ring.
final MolSketch benzylicBromination = MolSketch(
  name: 'toluene and bromine in light giving benzyl bromide',
  width: 720,
  height: 300,
  atoms: [
    ..._ringAtoms('l', const Offset(140, 175), 42),
    MAtom(
      'me',
      _onRing(const Offset(140, 175), 42, 0, 48).dx,
      _onRing(const Offset(140, 175), 42, 0, 48).dy,
      label: 'CH3',
    ),
    ..._ringAtoms('r', const Offset(540, 175), 42),
    MAtom(
      'ch2br',
      _onRing(const Offset(540, 175), 42, 0, 52).dx,
      _onRing(const Offset(540, 175), 42, 0, 52).dy,
      label: 'CH2Br',
    ),
  ],
  bonds: [
    ..._kekule('l'),
    const MBond('l0', 'me'),
    ..._kekule('r'),
    const MBond('r0', 'ch2br'),
  ],
  arrows: const [MArrow(Offset(250, 185), Offset(390, 185), label: 'Br2, light')],
);
