import 'package:training/week2/core/enum/duration_enum.dart';

class DurationExceptions implements Exception {
  final DurationEnum data;

  DurationExceptions(this.data);
  @override
  String toString() {
    return 'Duration not found $data';
  }
}
