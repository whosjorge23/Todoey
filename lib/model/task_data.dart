import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: "Buy bacon")];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(String newTask) {
    final nTask = Task(name: newTask);
    _tasks.add(nTask);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  Color randomColor(){
    List<Color> colors = [Colors.lightGreen,Colors.lightBlue, Colors.redAccent];
    final _random = new Random();
    return colors[_random.nextInt(colors.length)];
  }
}
