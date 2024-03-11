import 'package:dio/dio.dart';
import 'package:training/week4/feature/task/model/task_model.dart';

abstract class ITaskService {
  final Dio dio;

  ITaskService(this.dio);

  Future<List<TaskModel>> fetchAllTask();
}
