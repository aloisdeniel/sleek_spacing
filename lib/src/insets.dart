import 'package:flutter/material.dart';
import 'package:sleek_spacing/src/spacing_data.dart';

import 'space.dart';
import 'spacing.dart';

class SleekSides {
  final bool hasTop;
  final bool hasBottom;
  final bool hasLeft;
  final bool hasRight;

  static const SleekSides all = SleekSides(
    hasLeft: true,
    hasRight: true,
    hasTop: true,
    hasBottom: true,
  );
  static const SleekSides top = SleekSides(
    hasTop: true,
  );
  static const SleekSides bottom = SleekSides(
    hasBottom: true,
  );
  static const SleekSides right = SleekSides(
    hasRight: true,
  );
  static const SleekSides left = SleekSides(
    hasLeft: true,
  );
  static const SleekSides vertical = SleekSides(
    hasTop: true,
    hasBottom: true,
  );
  static const SleekSides horizontal = SleekSides(
    hasLeft: true,
    hasRight: true,
  );

  SleekSides operator &(other) {
    return this + other;
  }

  SleekSides operator +(other) {
    if (other is SleekSides) {
      return SleekSides(
        hasBottom: this.hasBottom || other.hasBottom,
        hasRight: this.hasRight || other.hasRight,
        hasLeft: this.hasLeft || other.hasLeft,
        hasTop: this.hasTop || other.hasTop,
      );
    }

    return this;
  }

  SleekSides operator -(other) {
    if (other is SleekSides) {
      return SleekSides(
        hasBottom: this.hasBottom && !other.hasBottom,
        hasRight: this.hasRight && !other.hasRight,
        hasLeft: this.hasLeft && !other.hasLeft,
        hasTop: this.hasTop && !other.hasTop,
      );
    }

    return this;
  }

  const SleekSides({
    this.hasTop = false,
    this.hasBottom = false,
    this.hasLeft = false,
    this.hasRight = false,
  })  : assert(hasTop != null),
        assert(hasBottom != null),
        assert(hasLeft != null),
        assert(hasRight != null);
}

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
          [SleekSides border = SleekSides.all]) =>
      SleekInsets(
        top: border.hasTop ? space : SleekSpace.none,
        bottom: border.hasBottom ? space : SleekSpace.none,
        right: border.hasRight ? space : SleekSpace.none,
        left: border.hasLeft ? space : SleekSpace.none,
      );

  factory SleekInsets.extraSmall([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(SleekSpace.extraSmall, border);

  factory SleekInsets.small([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(SleekSpace.small, border);

  factory SleekInsets.medium([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.medium,
        border,
      );

  factory SleekInsets.normal([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.normal,
        border,
      );

  factory SleekInsets.big([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.big,
        border,
      );

  factory SleekInsets.extraBig([SleekSides border = SleekSides.all]) =>
      SleekInsets.only(
        SleekSpace.extraBig,
        border,
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
