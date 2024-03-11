// ignore_for_file: implementation_imports

import 'dart:io';

import 'package:dio/src/dio.dart';
import 'package:training/week4/feature/task/model/task_model.dart';
import 'package:training/week4/feature/task/service/ItaskService.dart';
part 'task_service_endpoint.dart';

class TaskService extends ITaskService {
  TaskService(Dio dio) : super(dio);

  @override
  Future<List<TaskModel>> fetchAllTask() async {
    final response = await dio.get(_TaskServiceEndPoint.dogs.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => TaskModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
