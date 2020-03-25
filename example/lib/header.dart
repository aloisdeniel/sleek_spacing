import 'package:example/swatches.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_spacing/sleek_spacing.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return SleekRow(
      spaceBetween: SleekSpace.normal,
      children: <Widget>[
        Text(
          "#",
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: sleek.link,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
