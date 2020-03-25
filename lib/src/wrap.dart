import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sleek_spacing/src/space.dart';
import 'package:sleek_spacing/src/spacing.dart';

import '../sleek_spacing.dart';

class SleekWrap extends StatelessWidget {
  final List<Widget> children;
  final Axis direction;
  final WrapAlignment alignment;
  final SleekSpace runSpacing;
  final SleekSpace spacing;
  final SleekInsets padding;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  const SleekWrap({
    Key key,
    this.padding,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = SleekSpace.none,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = SleekSpace.none,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.children = const <Widget>[],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = SleekSpacing.of(context);
    Widget result = Wrap(
      direction: direction,
      alignment: alignment,
      spacing: spacing.toPoints(data: data),
      crossAxisAlignment: crossAxisAlignment,
      runAlignment: runAlignment,
      runSpacing: runSpacing.toPoints(data: data),
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: children,
    );

    if (padding != null) {
      result = SleekPadding(
        padding: padding,
        child: result,
      );
    }

    return Provider.value(
      value: direction,
      child: result,
    );
  }
}
