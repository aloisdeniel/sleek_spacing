import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacing_data.freezed.dart';

@freezed
abstract class SleekSpacingData with _$SleekSpacingData {
  const factory SleekSpacingData._({
    @required double extraSmall,
    @required double small,
    @required double normal,
    @required double medium,
    @required double big,
    @required double extraBig,
  }) = _SleekSpacingData;

  factory SleekSpacingData({
    double extraSmall,
    double small,
    @required double normal,
    double medium,
    double big,
    double extraBig,
  }) {
    return SleekSpacingData._(
      extraSmall: extraSmall ?? (normal * 0.25),
      small: small ?? (normal * 0.50),
      normal: normal,
      medium: medium ?? (normal * 2.0),
      big: big ?? (normal * 4.0),
      extraBig: extraBig ?? (normal * 8.0),
    );
  }

  factory SleekSpacingData.fallback() => SleekSpacingData(normal: 12.0);
}
