import 'package:flutter/widgets.dart';
import 'gaps.dart';
import 'space.dart';

extension WidgetIterableExtension on Iterable<Widget> {
  List<Widget> spaced(SleekSpace space) {
    if (this.isEmpty) {
      return const <Widget>[];
    }
    return <Widget>[
      first,
      ...this.skip(1).expand((child) {
        return <Widget>[
          SleekGap(space),
          child,
        ];
      }),
    ];
  }
}
