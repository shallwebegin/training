part of 'task_service.dart';

enum _TaskServiceEndPoint { dogs }

extension TaskServiceEndPointExtension on _TaskServiceEndPoint {
  String get rawValue {
    switch (this) {
      case _TaskServiceEndPoint.dogs:
        return 'dogs';
    }
  }
}
