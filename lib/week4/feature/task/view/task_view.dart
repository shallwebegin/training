import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:training/week4/feature/task/viewmodel/task_view_model.dart';

class TaskView extends StatelessWidget {
  TaskView({super.key});
  final _viewModel = TaskViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.onIncrementCount();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Observer(
          builder: (context) => Text(_viewModel.count.toString()),
        ),
      ),
    );
  }
}
