import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screens/bottomSheetScreen.dart';
import 'package:to_do_app/widgetsDir/tasklists.dart';
import 'package:to_do_app/Models/task.dart';


class TaskScreen extends StatefulWidget {

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  List<Task>listOfTasks = [
    Task(taskName: "BuyButterMilk"),
    Task(taskName: "Develop Flutter Projects"),
    Task(taskName: "Do Front End"),
    Task(taskName: "Practice datastructures and algorithms"),
  ];


  Widget bottomSheet(BuildContext context) => bottomSheetContainer(
    addNewTask: (textValue){
      setState(() {
        listOfTasks.add(Task(taskName: textValue));
      });
      Navigator.pop(context);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: bottomSheet);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height : 5.0,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 60,
                  ),
                ),
                Text(
                  "${listOfTasks.length} Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal : 20.0),
                child: taskList(
                  tasks: listOfTasks,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

