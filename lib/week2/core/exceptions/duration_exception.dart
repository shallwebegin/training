import 'package:training/week2/core/enums/duration_enums.dart';

class DurationExceptions implements Exception {
  final DurationEnums data;

  DurationExceptions(this.data);

  @override
  String toString() {
    return 'Duration no found $data';
  }
}
