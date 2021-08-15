import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';

import 'package:to_do_app/Models/task.dart';

// ignore: camel_case_types
class taskList extends StatelessWidget {

  List<Task>listOfTasks = [
    Task(taskName: "BuyButterMilk"),
    Task(taskName: "Develop Flutter Projects"),
    Task(taskName: "Do Front End"),
    Task(taskName: "Practice datastructures and algorithms"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        listTileWidget(stringText: listOfTasks[0].taskName),
        listTileWidget(stringText: listOfTasks[1].taskName,),
        listTileWidget(stringText: listOfTasks[2].taskName,),
        listTileWidget(stringText: listOfTasks[3].taskName,),
      ],
    );
  }
}
