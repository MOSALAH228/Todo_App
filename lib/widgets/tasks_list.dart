import 'package:flutter/material.dart';
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallBack: (bool? value) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deletItem(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
