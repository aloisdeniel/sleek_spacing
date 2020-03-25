import 'package:flutter/widgets.dart';
import 'package:sleek_spacing/src/insets.dart';
import 'package:sleek_spacing/src/padding.dart';
import 'package:sleek_spacing/src/space.dart';

import 'children_extensions.dart';

class SleekFlex extends StatelessWidget {
  final Axis direction;
  final SleekInsets padding;
  final SleekSpace spaceBetween;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final TextDirection textDirection;
  final TextBaseline textBaseline;

  const SleekFlex({
    Key key,
    @required this.direction,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.padding,
    this.spaceBetween,
    this.children = const <Widget>[],
  })  : assert(direction != null),
        assert(mainAxisAlignment != null),
        assert(mainAxisSize != null),
        assert(crossAxisAlignment != null),
        assert(verticalDirection != null),
        assert(crossAxisAlignment != CrossAxisAlignment.baseline ||
            textBaseline != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget result = Flex(
      direction: direction,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      mainAxisAlignment: mainAxisAlignment,
      textBaseline: textBaseline,
      children: spaceBetween != null && spaceBetween != SleekSpace.none
          ? this.children.spaced(spaceBetween, axis: direction)
          : this.children,
    );

    if (padding != null) {
      result = SleekPadding(
        padding: padding,
        child: result,
      );
    }

    return result;
  }
}

class SleekColumn extends SleekFlex {
  const SleekColumn({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    SleekInsets padding,
    SleekSpace spaceBetween,
    List<Widget> children = const <Widget>[],
  }) : super(
          children: children,
          key: key,
          padding: padding,
          spaceBetween: spaceBetween,
          direction: Axis.vertical,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
        );
}

class SleekRow extends SleekFlex {
  const SleekRow({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    SleekInsets padding,
    SleekSpace spaceBetween,
    List<Widget> children = const <Widget>[],
  }) : super(
          children: children,
          key: key,
          padding: padding,
          spaceBetween: spaceBetween,
          direction: Axis.horizontal,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
        );
}
