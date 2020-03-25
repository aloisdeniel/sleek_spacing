import 'package:example/swatches.dart';
import 'package:flutter/material.dart';
import 'package:sleek_spacing/sleek_spacing.dart';

import 'header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final result = Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SleekColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: SleekInsets.normal(),
            spaceBetween: SleekSpace.normal,
            children: <Widget>[
              SectionHeader('Spacing'),
              Container(
                decoration: BoxDecoration(
                  color: sleek.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Bloc(32, 64),
                      SleekHorizontalGap.extraSmall(),
                      Bloc(32, 64),
                      SleekHorizontalGap.small(),
                      Bloc(32, 64),
                      SleekHorizontalGap.normal(),
                      Bloc(32, 64),
                      SleekHorizontalGap.medium(),
                      Bloc(32, 64),
                      SleekHorizontalGap.big(),
                      Bloc(32, 64),
                      SleekHorizontalGap.extraBig(),
                      Bloc(32, 64),
                    ],
                  ),
                ),
              ),
              SleekVerticalGap.big(),
              SectionHeader('Padding'),
              Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: sleek.danger.withOpacity(0.5),
                          width: 20,
                        ),
                      ),
                      child: Container(
                        color: sleek.link.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SleekPadding(
                    padding: SleekInsets.medium(),
                    child: Bloc(128, 128),
                  )
                ],
              ),
              SleekVerticalGap.big(),
              SectionHeader('Column'),
              Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: sleek.danger.withOpacity(0.5),
                          width: 20,
                        ),
                      ),
                      child: Container(
                        color: sleek.link.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SleekColumn(
                    padding: SleekInsets.medium(),
                    spaceBetween: SleekSpace.normal,
                    children: List<Widget>.generate(
                      3,
                      (index) => Bloc(64, 32),
                    ),
                  ),
                ],
              ),
              SleekVerticalGap.big(),
              SectionHeader('Row'),
              Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: sleek.danger.withOpacity(0.5),
                          width: 20,
                        ),
                      ),
                      child: Container(
                        color: sleek.link.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SleekRow(
                    mainAxisSize: MainAxisSize.min,
                    padding: SleekInsets.medium(),
                    spaceBetween: SleekSpace.normal,
                    children: List<Widget>.generate(
                      5,
                      (index) => Bloc(32, 64),
                    ),
                  ),
                ],
              ),
              SleekVerticalGap.big(),
              SectionHeader('Wrap'),
              Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: sleek.danger.withOpacity(0.5),
                          width: 20,
                        ),
                      ),
                      child: Container(
                        color: sleek.link.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SleekWrap(
                    padding: SleekInsets.medium(),
                    spacing: SleekSpace.normal,
                    runSpacing: SleekSpace.normal,
                    children: List<Widget>.generate(
                      10,
                      (index) => Bloc(32, 32),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return result;
  }
}

class Bloc extends StatelessWidget {
  final double width;
  final double height;

  const Bloc(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: sleek.primary,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
