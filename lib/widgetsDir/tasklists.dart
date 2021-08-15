import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';
import 'package:to_do_app/Models/task.dart';

// ignore: camel_case_types
class taskList extends StatefulWidget {

  final List<Task>tasks;

  taskList({required this.tasks});

  @override
  _taskListState createState() => _taskListState();
}

// ignore: camel_case_types
class _taskListState extends State<taskList> {


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context,index){
        return listTileWidget(
          stringText: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          onChanged: (newValue){
            setState(() {
              widget.tasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
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