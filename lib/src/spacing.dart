import 'package:flutter/widgets.dart';
import 'package:sleek_spacing/src/spacing_data.dart';

class SleekSpacing extends StatefulWidget {
  final SleekSpacingData data;
  final Widget child;

  const SleekSpacing({
    Key key,
    this.child,
    @required this.data,
  }) : super(key: key);

  static SleekSpacingData of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<SleekSpacingProvider>();
    if (provider == null) return SleekSpacingData.fallback();
    return provider.value;
  }

  static _SleekSpacingState _findState(BuildContext context) {
    final state = context.findAncestorStateOfType<_SleekSpacingState>();
    if (state == null)
      throw Exception('No SleekSpacing found in the widget tree');
    return state;
  }

  static void update(BuildContext context, SleekSpacingData data) {
    _findState(context).update(data);
  }

  @override
  _SleekSpacingState createState() => _SleekSpacingState();
}

class _SleekSpacingState extends State<SleekSpacing> {
  SleekSpacingData _data;

  @override
  void initState() {
    this._data = widget.data;
    super.initState();
  }

  void update(SleekSpacingData spacing) {
    this.setState(() => _data = spacing);
  }

  @override
  Widget build(BuildContext context) {
    return SleekSpacingProvider(
      value: _data ?? SleekSpacingData.fallback(),
      child: widget.child,
    );
  }
}

class SleekSpacingProvider extends InheritedWidget {
  final SleekSpacingData value;

  SleekSpacingProvider({
    Key key,
    Widget child,
    this.value,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(SleekSpacingProvider oldWidget) {
    return value != oldWidget.value;
  }
}
