import 'package:flutter/widgets.dart';
import 'package:sleek_spacing/src/sides.dart';
import 'package:sleek_spacing/src/space.dart';

import 'insets.dart';
import 'space.dart';

class SleekPadding extends StatelessWidget {
  final SleekInsets padding;
  final Widget child;

  const SleekPadding({
    Key key,
    this.child,
    this.padding = SleekInsets.none,
  })  : assert(padding != null),
        super(key: key);

  factory SleekPadding.only(
    SleekSpace space, {
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(space, sides),
      );

  factory SleekPadding.extraSmall({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.extraSmall, sides),
      );

  factory SleekPadding.small({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.small, sides),
      );

  factory SleekPadding.medium({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.medium, sides),
      );

  factory SleekPadding.normal({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.normal, sides),
      );

  factory SleekPadding.big({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.big, sides),
      );

  factory SleekPadding.extraBig({
    Key key,
    SleekSides sides = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.extraBig, sides),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.toEdgeInsets(context: context),
      child: child,
    );
  }
}
