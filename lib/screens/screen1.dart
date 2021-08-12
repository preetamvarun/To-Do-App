import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){print("Floating Action Button Is Pressed");},
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
                    Icons.analytics_outlined,
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
                  "12 Tasks",
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
              child: ListView(
                children: [
                  listTileWidget(stringText: "Buy Butter Milk",),
                  listTileWidget(stringText: "Develop Flutter Projects",)
                ],
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


