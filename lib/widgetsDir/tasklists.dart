import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';
import 'package:to_do_app/Models/task.dart';

// ignore: camel_case_types
class taskList extends StatefulWidget {

  @override
  _taskListState createState() => _taskListState();
}

class _taskListState extends State<taskList> {

  List<Task>listOfTasks = [
    Task(taskName: "BuyButterMilk"),
    Task(taskName: "Develop Flutter Projects"),
    Task(taskName: "Do Front End"),
    Task(taskName: "Practice datastructures and algorithms"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return listTileWidget(
          stringText: listOfTasks[index].taskName,
          isChecked: listOfTasks[index].isDone,
          onChanged: (newValue){
            setState(() {
              listOfTasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: listOfTasks.length,
    );
  }
}


// keep this code for reference purpose

// children: [
// listTileWidget(stringText: listOfTasks[0].taskName,isChecked: listOfTasks[1].isDone,),
// listTileWidget(stringText: listOfTasks[1].taskName,isChecked: listOfTasks[1].isDone,),
// listTileWidget(stringText: listOfTasks[2].taskName,isChecked: listOfTasks[1].isDone,),
// listTileWidget(stringText: listOfTasks[3].taskName,isChecked: listOfTasks[1].isDone,),
// ],