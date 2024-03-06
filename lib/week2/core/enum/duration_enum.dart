// ignore_for_file: constant_identifier_names

import 'package:training/week2/core/exceptions/duration_exceptions.dart';

enum DurationEnum { LOW, NORMAL, HIGH, NORMAL2 }

extension DurationEnumExtension on DurationEnum {
  /// Your duration enums convert to [Duration] item.

  Duration get time {
    switch (this) {
      case DurationEnum.HIGH:
        return const Duration(seconds: 10);
      case DurationEnum.NORMAL:
        return const Duration(seconds: 5);
      case DurationEnum.LOW:
        return const Duration(seconds: 2);
      default:
        throw DurationExceptions(this);
    }
  }
}
