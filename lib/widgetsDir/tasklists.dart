import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Models/notifierTaskClass.dart';

// ignore: camel_case_types
class taskList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.listOfTasks[index];
            return listTileWidget(
              longPress: (){
                TaskData.removeTask(index);
              },
              stringText: task.taskName,
              isChecked: task.isDone,
              onChanged: (newValue) {
                TaskData.toggle(task);
              },
            );
          },
          itemCount: TaskData.getNoOfTasks(),
        );
      }
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