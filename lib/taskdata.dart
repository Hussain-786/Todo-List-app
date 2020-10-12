import 'package:flutter/foundation.dart';
import  'add_taskscreen.dart';

class TaskData extends ChangeNotifier{
  List<Task> taskItem = [];

  int get taskCount{
    return taskItem.length;
  }

  void addTask(String newTaskTile){
    final task = Task(newTask: newTaskTile);
    taskItem.add(task);
    notifyListeners();
  }
  
  void updateTask(Task task){
    task.isDone();
    notifyListeners();
  }

  void removeTask(Task task){
    taskItem.remove(task);
    notifyListeners();
  }
}