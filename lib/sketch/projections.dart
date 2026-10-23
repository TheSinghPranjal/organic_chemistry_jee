import 'package:flutter/material.dart';

import 'mol.dart';

/// Stereo drawings for the isomerism chapter.
///
/// Wedges are solid and come toward the viewer (narrow end on the stereocentre).
/// Hashes go away from the viewer. In a Fischer projection the horizontal bonds
/// are wedges and the vertical bonds are hashes.

MolSketch _fischer({
  required String name,
  required String top,
  required String bottom,
  required List<({String left, String right})> row,
  String? caption,
}) {
  const cx = 150.0;
  const topY = 28.0;
  const gap = 78.0;
  final n = row.length;
  final atoms = <MAtom>[
    MAtom('top', cx, topY, label: top),
  ];
  final bonds = <MBond>[];
  for (var i = 0; i < n; i++) {
    final y = topY + gap * (i + 1);
    atoms.add(MAtom('c$i', cx, y, label: 'C'));
    atoms.add(MAtom('l$i', 36, y, label: row[i].left));
    atoms.add(MAtom('r$i', 250, y, label: row[i].right));
    bonds.add(MBond('c$i', 'l$i', style: BondStyle.wedge));
    bonds.add(MBond('c$i', 'r$i', style: BondStyle.wedge));
    if (i == 0) {
      bonds.add(MBond('c0', 'top', style: BondStyle.hash));
    } else {
      bonds.add(MBond('c${i - 1}', 'c$i', style: BondStyle.hash));
    }
  }
  final bottomY = topY + gap * (n + 1);
  atoms.add(MAtom('bot', cx, bottomY, label: bottom));
  bonds.add(MBond('c${n - 1}', 'bot', style: BondStyle.hash));
  final captionY = bottomY + 42;
  return MolSketch(
    name: name,
    width: 300,
    height: caption == null ? bottomY + 24 : captionY + 16,
    atoms: atoms,
    bonds: bonds,
    notes: [
      if (caption != null) MNote(cx, captionY, caption),
    ],
  );
}

final MolSketch fischerSLactic = _fischer(
  name: 'Fischer projection, OH on the left',
  top: 'CO2H',
  bottom: 'CH3',
  row: [(left: 'OH', right: 'H')],
  caption: 'horizontal wedge = toward you',
);

final MolSketch fischerRLactic = _fischer(
  name: 'Fischer projection, OH on the right',
  top: 'CO2H',
  bottom: 'CH3',
  row: [(left: 'H', right: 'OH')],
  caption: 'horizontal wedge = toward you',
);

final MolSketch fischerMesoTartaric = _fischer(
  name: 'Fischer projection, both OH groups on the left',
  top: 'CO2H',
  bottom: 'CO2H',
  row: [
    (left: 'OH', right: 'H'),
    (left: 'OH', right: 'H'),
  ],
  caption: 'horizontal wedge = toward you',
);

final MolSketch fischerRRTartaric = _fischer(
  name: 'Fischer projection, OH right then OH left',
  top: 'CO2H',
  bottom: 'CO2H',
  row: [
    (left: 'H', right: 'OH'),
    (left: 'OH', right: 'H'),
  ],
  caption: 'horizontal wedge = toward you',
);

MolSketch _alkene({
  required String name,
  required String leftUp,
  required String leftDown,
  required String rightUp,
  required String rightDown,
}) {
  return MolSketch(
    name: name,
    width: 340,
    height: 160,
    atoms: [
      MAtom('c1', 120, 78),
      MAtom('c2', 190, 78),
      MAtom('lu', 42, 28, label: leftUp),
      MAtom('ld', 42, 130, label: leftDown),
      MAtom('ru', 292, 28, label: rightUp),
      MAtom('rd', 292, 130, label: rightDown),
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

/// (E)-3-methylpent-2-ene: high priorities (CH3 on C2, ethyl on C3) are opposite.
final MolSketch alkeneE = _alkene(
  name: 'E alkene, methyl and ethyl on opposite sides',
  leftUp: 'CH3',
  leftDown: 'H',
  rightUp: 'CH3',
  rightDown: 'CH2CH3',
);

/// (Z)-3-methylpent-2-ene: the same high priorities lie on the same side.
final MolSketch alkeneZ = _alkene(
  name: 'Z alkene, methyl and ethyl on the same side',
  leftUp: 'CH3',
  leftDown: 'H',
  rightUp: 'CH2CH3',
  rightDown: 'CH3',
);

/// One enantiomer of penta-2,3-diene. The right-hand end is perpendicular
/// to the left-hand end, so the molecule has an axis of chirality.
final MolSketch alleneChiral = MolSketch(
  name: 'penta-2,3-diene, perpendicular ends',
  width: 300,
  height: 200,
  atoms: const [
    MAtom('hL', 36, 36, label: 'H'),
    MAtom('mL', 36, 148, label: 'CH3'),
    MAtom('cL', 100, 92),
    MAtom('cM', 158, 92),
    MAtom('cR', 216, 92),
    MAtom('mR', 270, 36, label: 'CH3'),
    MAtom('hR', 270, 150, label: 'H'),
  ],
  bonds: const [
    MBond('cL', 'hL'),
    MBond('cL', 'mL'),
    MBond('cL', 'cM', order: 2),
    MBond('cM', 'cR', order: 2),
    MBond('cR', 'mR', style: BondStyle.wedge),
    MBond('cR', 'hR', style: BondStyle.hash),
  ],
  notes: const [
    MNote(150, 184, 'right end is perpendicular'),
  ],
);

/// (R)-2-chlorobutane. Hydrogen is directly behind the carbon.
/// Clockwise from Cl to ethyl to methyl.
final MolSketch wedgeRBehind = MolSketch(
  name: 'R-2-chlorobutane, hydrogen behind the carbon',
  width: 280,
  height: 230,
  atoms: const [
    MAtom('c', 140, 100, label: 'C'),
    MAtom('cl', 140, 28, label: 'Cl'),
    MAtom('et', 230, 168, label: 'CH2CH3'),
    MAtom('me', 50, 168, label: 'CH3'),
  ],
  bonds: const [
    MBond('c', 'cl'),
    MBond('c', 'et'),
    MBond('c', 'me'),
  ],
  notes: const [MNote(140, 210, 'H is directly behind C')],
);

/// (S)-2-chlorobutane, the mirror of [wedgeRBehind].
final MolSketch wedgeSBehind = MolSketch(
  name: 'S-2-chlorobutane, hydrogen behind the carbon',
  width: 280,
  height: 230,
  atoms: const [
    MAtom('c', 140, 100, label: 'C'),
    MAtom('cl', 140, 28, label: 'Cl'),
    MAtom('et', 50, 168, label: 'CH2CH3'),
    MAtom('me', 230, 168, label: 'CH3'),
  ],
  bonds: const [
    MBond('c', 'cl'),
    MBond('c', 'et'),
    MBond('c', 'me'),
  ],
  notes: const [MNote(140, 210, 'H is directly behind C')],
);

/// (R)-2-chlorobutane in a wedge-dash drawing.
/// Cl is wedged toward you, H is hashed away, ethyl is at the lower right,
/// and methyl is on the left. With H away, Cl → ethyl → methyl is clockwise.
final MolSketch wedgeDashR = MolSketch(
  name: 'R-2-chlorobutane wedge and dash',
  width: 320,
  height: 240,
  atoms: const [
    MAtom('c', 150, 108, label: 'C'),
    MAtom('cl', 168, 36, label: 'Cl'),
    MAtom('me', 42, 118, label: 'CH3'),
    MAtom('et', 250, 164, label: 'CH2CH3'),
    MAtom('h', 136, 196, label: 'H'),
  ],
  bonds: const [
    MBond('c', 'cl', style: BondStyle.wedge),
    MBond('c', 'me'),
    MBond('c', 'et'),
    MBond('c', 'h', style: BondStyle.hash),
  ],
);

/// (S)-2-chlorobutane, ethyl and methyl swapped relative to [wedgeDashR].
final MolSketch wedgeDashS = MolSketch(
  name: 'S-2-chlorobutane wedge and dash',
  width: 320,
  height: 240,
  atoms: const [
    MAtom('c', 150, 108, label: 'C'),
    MAtom('cl', 168, 36, label: 'Cl'),
    MAtom('et', 42, 118, label: 'CH2CH3'),
    MAtom('me', 250, 164, label: 'CH3'),
    MAtom('h', 136, 196, label: 'H'),
  ],
  bonds: const [
    MBond('c', 'cl', style: BondStyle.wedge),
    MBond('c', 'et'),
    MBond('c', 'me'),
    MBond('c', 'h', style: BondStyle.hash),
  ],
);

Newman _newman({
  required List<NewmanArm> front,
  required List<NewmanArm> back,
}) {
  return Newman(
    center: const Offset(160, 132),
    front: front,
    back: back,
  );
}

final MolSketch newmanAntiButane = MolSketch(
  name: 'Newman projection of butane, methyl groups opposite',
  width: 320,
  height: 280,
  atoms: const [],
  bonds: const [],
  newman: _newman(
    front: const [
      NewmanArm(0, 'CH3'),
      NewmanArm(4, 'H'),
      NewmanArm(8, 'H'),
    ],
    back: const [
      NewmanArm(6, 'CH3'),
      NewmanArm(2, 'H'),
      NewmanArm(10, 'H'),
    ],
  ),
);

final MolSketch newmanGaucheButane = MolSketch(
  name: 'Newman projection of butane, methyl groups 60 degrees apart',
  width: 320,
  height: 280,
  atoms: const [],
  bonds: const [],
  newman: _newman(
    front: const [
      NewmanArm(0, 'CH3'),
      NewmanArm(4, 'H'),
      NewmanArm(8, 'H'),
    ],
    back: const [
      NewmanArm(2, 'CH3'),
      NewmanArm(6, 'H'),
      NewmanArm(10, 'H'),
    ],
  ),
);

/// Back groups are nudged by about 30 degrees so the labels can be read.
/// They represent a fully eclipsed methyl–methyl arrangement.
final MolSketch newmanEclipsedButane = MolSketch(
  name: 'Newman projection of butane, methyl groups eclipsed',
  width: 320,
  height: 300,
  atoms: const [],
  bonds: const [],
  newman: _newman(
    front: const [
      NewmanArm(0, 'CH3'),
      NewmanArm(4, 'H'),
      NewmanArm(8, 'H'),
    ],
    back: const [
      NewmanArm(1.15, 'CH3'),
      NewmanArm(5.15, 'H'),
      NewmanArm(9.15, 'H'),
    ],
  ),
  notes: const [MNote(160, 278, 'back groups nudged so they can be seen')],
);

final MolSketch newmanAntiDibromo = MolSketch(
  name: 'Newman projection of 1,2-dibromoethane, bromines opposite',
  width: 320,
  height: 280,
  atoms: const [],
  bonds: const [],
  newman: _newman(
    front: const [
      NewmanArm(0, 'Br'),
      NewmanArm(4, 'H'),
      NewmanArm(8, 'H'),
    ],
    back: const [
      NewmanArm(6, 'Br'),
      NewmanArm(2, 'H'),
      NewmanArm(10, 'H'),
    ],
  ),
);

final MolSketch newmanGaucheDibromo = MolSketch(
  name: 'Newman projection of 1,2-dibromoethane, bromines 60 degrees apart',
  width: 320,
  height: 280,
  atoms: const [],
  bonds: const [],
  newman: _newman(
    front: const [
      NewmanArm(0, 'Br'),
      NewmanArm(4, 'H'),
      NewmanArm(8, 'H'),
    ],
    back: const [
      NewmanArm(2, 'Br'),
      NewmanArm(6, 'H'),
      NewmanArm(10, 'H'),
    ],
  ),
);

final MolSketch sawhorseAntiButane = MolSketch(
  name: 'sawhorse of butane, methyl groups opposite',
  width: 320,
  height: 250,
  atoms: const [],
  bonds: const [],
  sawhorse: const Sawhorse(
    front: Offset(118, 128),
    back: Offset(198, 78),
    frontArms: [
      SawhorseArm(Offset(48, 196), 'CH3'),
      SawhorseArm(Offset(42, 78), 'H'),
      SawhorseArm(Offset(168, 196), 'H'),
    ],
    backArms: [
      SawhorseArm(Offset(278, 28), 'CH3'),
      SawhorseArm(Offset(268, 128), 'H'),
      SawhorseArm(Offset(150, 22), 'H'),
    ],
  ),
);

final MolSketch sawhorseGaucheButane = MolSketch(
  name: 'sawhorse of butane, methyl groups skewed',
  width: 320,
  height: 250,
  atoms: const [],
  bonds: const [],
  sawhorse: const Sawhorse(
    front: Offset(118, 128),
    back: Offset(198, 78),
    frontArms: [
      SawhorseArm(Offset(48, 196), 'CH3'),
      SawhorseArm(Offset(42, 78), 'H'),
      SawhorseArm(Offset(168, 196), 'H'),
    ],
    backArms: [
      SawhorseArm(Offset(286, 150), 'CH3'),
      SawhorseArm(Offset(270, 28), 'H'),
      SawhorseArm(Offset(150, 22), 'H'),
    ],
  ),
);
