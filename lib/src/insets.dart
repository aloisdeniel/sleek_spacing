import 'package:flutter/material.dart';
import 'package:sleek_spacing/src/sides.dart';
import 'package:sleek_spacing/src/spacing_data.dart';

import 'space.dart';
import 'spacing.dart';

class SleekInsets {
  final SleekSpace top;
  final SleekSpace bottom;
  final SleekSpace left;
  final SleekSpace right;

  static const SleekInsets none = SleekInsets(all: SleekSpace.none);
  static const SleekInsets allSmall = SleekInsets(all: SleekSpace.small);
  static const SleekInsets allNormal = SleekInsets(all: SleekSpace.normal);
  static const SleekInsets allMedium = SleekInsets(all: SleekSpace.medium);
  static const SleekInsets allBig = SleekInsets(all: SleekSpace.big);

  const SleekInsets({
    SleekSpace top,
    SleekSpace bottom,
    SleekSpace right,
    SleekSpace left,
    SleekSpace vertical,
    SleekSpace horizontal,
    SleekSpace all,
  })  : this.top = top != null
            ? top
            : (vertical != null
                ? vertical
                : (all != null ? all : SleekSpace.none)),
        this.bottom = bottom != null
            ? bottom
            : (vertical != null
                ? vertical
                : (all != null ? all : SleekSpace.none)),
        this.left = left != null
            ? left
            : (horizontal != null
                ? horizontal
                : (all != null ? all : SleekSpace.none)),
        this.right = right != null
            ? bottom
            : (horizontal != null
                ? horizontal
                : (all != null ? all : SleekSpace.none));

  factory SleekInsets.only(SleekSpace space,
          [SleekSides sides = SleekSides.all]) =>
      SleekInsets(
        top: sides.hasTop ? space : SleekSpace.none,
        bottom: sides.hasBottom ? space : SleekSpace.none,
        right: sides.hasRight ? space : SleekSpace.none,
        left: sides.hasLeft ? space : SleekSpace.none,
      );

  factory SleekInsets.extraSmall([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(SleekSpace.extraSmall, sides);

  factory SleekInsets.small([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(SleekSpace.small, sides);

  factory SleekInsets.medium([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.medium,
        sides,
      );

  factory SleekInsets.normal([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.normal,
        sides,
      );

  factory SleekInsets.big([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.big,
        sides,
      );

  factory SleekInsets.extraBig([SleekSides sides = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.extraBig,
        sides,
      );

  EdgeInsets toEdgeInsets({BuildContext context, SleekSpacingData data}) {
    assert(context != null || data != null);
    final spacing = data ?? SleekSpacing.of(context);
    return EdgeInsets.only(
      left: this.left.toPoints(data: spacing),
      right: this.right.toPoints(data: spacing),
      top: this.top.toPoints(data: spacing),
      bottom: this.bottom.toPoints(data: spacing),
    );
  }
}
