// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;
@computed
bool get isOdd => count.isOdd;

@observable
int count = 0;

abstract class _TaskViewModelBase with Store {
  @action
  void onIncrementCount() {
    count += 1;
  }
}
