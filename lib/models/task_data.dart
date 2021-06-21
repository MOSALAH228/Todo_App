import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Learn english'),
    Task(name: 'Read a book'),
    Task(name: 'Go to gym'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void taskAdd(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletItem(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
