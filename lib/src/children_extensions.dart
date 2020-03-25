import 'package:flutter/widgets.dart';
import 'gaps.dart';
import 'space.dart';

extension WidgetIterableExtension on Iterable<Widget> {
  List<Widget> spaced(
    SleekSpace space, {
    Axis axis,
  }) {
    if (this.isEmpty) {
      return const <Widget>[];
    }
    return <Widget>[
      first,
      ...this.skip(1).expand((child) {
        return <Widget>[
          SleekGap(
            horizontal: axis == null || axis == Axis.horizontal
                ? space
                : SleekSpace.none,
            vertical:
                axis == null || axis == Axis.vertical ? space : SleekSpace.none,
          ),
          child,
        ];
      }),
    ];
  }
}
