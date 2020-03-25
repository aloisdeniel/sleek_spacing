import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sleek_spacing/src/space.dart';
import 'package:sleek_spacing/src/spacing.dart';

class SleekGap extends StatelessWidget {
  final SleekSpace vertical;
  final SleekSpace horizontal;
  final SleekSpace space;

  const SleekGap(
    this.space, {
    Key key,
  })  : this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.extraSmall({
    Key key,
  })  : this.space = SleekSpace.extraSmall,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.small({
    Key key,
  })  : this.space = SleekSpace.small,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.normal({
    Key key,
  })  : this.space = SleekSpace.normal,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.medium({
    Key key,
  })  : this.space = SleekSpace.medium,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.big({
    Key key,
  })  : this.space = SleekSpace.big,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.extraBig({
    Key key,
  })  : this.space = SleekSpace.extraBig,
        this.vertical = null,
        this.horizontal = null,
        super(key: key);

  const SleekGap.horizontal({
    Key key,
    this.horizontal = SleekSpace.normal,
  })  : assert(horizontal != null),
        this.vertical = SleekSpace.none,
        this.space = null,
        super(key: key);

  const SleekGap.vertical({
    Key key,
    this.vertical = SleekSpace.normal,
  })  : assert(vertical != null),
        this.horizontal = SleekSpace.none,
        this.space = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = SleekSpacing.of(context);
    var horizontal = this.horizontal;
    var vertical = this.vertical;
    if (horizontal == null && vertical == null) {
      final axis = Provider.of<Axis>(context);
      if (axis == Axis.horizontal) {
        horizontal = space;
      } else {
        vertical = space;
      }
    }
    return SizedBox(
      width: horizontal?.toPoints(data: spacing) ?? 0.0,
      height: vertical?.toPoints(data: spacing) ?? 0.0,
    );
  }
}
