import 'package:flutter/material.dart';
import 'package:sleek_spacing/src/spacing_data.dart';

import 'spacing.dart';

enum SleekSpace {
  none,
  extraSmall,
  small,
  normal,
  medium,
  big,
  extraBig,
}

extension SleekSpaceExtension on SleekSpace {
  double toPoints({BuildContext context, SleekSpacingData data}) {
    assert(context != null || data != null);
    final spacing = data ?? SleekSpacing.of(context);
    switch (this) {
      case SleekSpace.extraSmall:
        return spacing.extraSmall;
      case SleekSpace.normal:
        return spacing.normal;
      case SleekSpace.small:
        return spacing.small;
      case SleekSpace.medium:
        return spacing.medium;
      case SleekSpace.big:
        return spacing.big;
      case SleekSpace.extraBig:
        return spacing.extraBig;
      default:
        return 0;
    }
  }
}
