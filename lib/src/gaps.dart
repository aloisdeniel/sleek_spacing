import 'package:flutter/widgets.dart';
import 'package:sleek_spacing/src/space.dart';
import 'package:sleek_spacing/src/spacing.dart';

class SleekGap extends StatelessWidget {
  final SleekSpace vertical;
  final SleekSpace horizontal;

  const SleekGap({
    Key key,
    this.vertical = SleekSpace.none,
    this.horizontal = SleekSpace.none,
  })  : assert(vertical != null),
        assert(horizontal != null),
        super(key: key);

  factory SleekGap.only(
    SleekSpace space, {
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) {
    return SleekGap(
      key: key,
      vertical: vertical ? space : SleekSpace.none,
      horizontal: horizontal ? space : SleekSpace.none,
    );
  }

  factory SleekGap.extraSmall({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.extraSmall,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  factory SleekGap.small({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.small,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  factory SleekGap.normal({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.normal,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  factory SleekGap.medium({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.medium,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  factory SleekGap.big({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.big,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  factory SleekGap.extraBig({
    Key key,
    bool vertical = false,
    bool horizontal = false,
  }) =>
      SleekGap.only(
        SleekSpace.extraBig,
        key: key,
        vertical: vertical,
        horizontal: horizontal,
      );

  @override
  Widget build(BuildContext context) {
    final spacing = SleekSpacing.of(context);
    return SizedBox(
      width: horizontal.toPoints(data: spacing),
      height: vertical.toPoints(data: spacing),
    );
  }
}

class SleekVerticalGap extends SleekGap {
  const SleekVerticalGap({
    Key key,
    SleekSpace space,
  }) : super(
          key: key,
          vertical: space,
        );

  const SleekVerticalGap.small({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.small,
        );

  const SleekVerticalGap.normal({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.normal,
        );

  const SleekVerticalGap.medium({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.medium,
        );

  const SleekVerticalGap.big({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.big,
        );
}

class SleekHorizontalGap extends SleekGap {
  const SleekHorizontalGap({
    Key key,
    SleekSpace space,
  }) : super(
          key: key,
          horizontal: space,
        );

  const SleekHorizontalGap.extraSmall({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.extraSmall,
        );

  const SleekHorizontalGap.small({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.small,
        );

  const SleekHorizontalGap.normal({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.normal,
        );

  const SleekHorizontalGap.medium({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.medium,
        );

  const SleekHorizontalGap.big({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.big,
        );

  const SleekHorizontalGap.extraBig({
    Key key,
  }) : this(
          key: key,
          space: SleekSpace.extraBig,
        );
}
