import 'package:flutter/widgets.dart';
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
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(space, border),
      );

  factory SleekPadding.extraSmall({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.extraSmall, border),
      );

  factory SleekPadding.small({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.small, border),
      );

  factory SleekPadding.medium({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.medium, border),
      );

  factory SleekPadding.normal({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.normal, border),
      );

  factory SleekPadding.big({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.big, border),
      );

  factory SleekPadding.extraBig({
    Key key,
    SleekSides border = SleekSides.all,
  }) =>
      SleekPadding(
        key: key,
        padding: SleekInsets.only(SleekSpace.extraBig, border),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.toEdgeInsets(context: context),
      child: child,
    );
  }
}
