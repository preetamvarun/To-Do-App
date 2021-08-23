import 'package:flutter/foundation.dart';
import 'package:to_do_app/Models/task.dart';


class TaskData extends ChangeNotifier{

  List<Task>listOfTasks = [
    Task(taskName: "BuyButterMilk"),
    Task(taskName: "Develop Flutter Projects"),
    Task(taskName: "Do Front End"),
    Task(taskName: "Practice datastructures and algorithms"),
  ];

  int getNoOfTasks(){
    return listOfTasks.length;
  }

  void addNewTask(String newTask){
    final task = Task(taskName: newTask);
    listOfTasks.add(task);
    notifyListeners();
  }

  void toggle(Task task){
    task.toggleIsDone();
    notifyListeners();
  }

  void removeTask(int index){
    listOfTasks.removeAt(index);
    notifyListeners();
  }

}
