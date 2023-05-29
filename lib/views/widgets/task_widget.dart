import 'package:flutter/material.dart';

import '../../model/Task.dart';

// ignore: must_be_immutable
class TaskWidget extends StatelessWidget {
  Task task;
  TaskWidget(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(task.name),
        value: task.isComplete,
        onChanged: (value) {
          task.isComplete = value!;
        });
  }
}
