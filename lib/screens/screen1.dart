import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
                  ListTile(
                    leading : Text("Buy Butter Milk", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),),
                    trailing : Icon(Icons.check_box_outline_blank),
                  ),
                  ListTile(
                    leading : Text("Develop Flutter Projects",style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),),
                    trailing : Icon(Icons.check_box_outline_blank),
                  ),
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
