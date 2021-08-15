import 'package:flutter/material.dart';

String newTaskTitle = '';

// ignore: camel_case_types
class bottomSheetContainer extends StatelessWidget {

  final addNewTask;

  bottomSheetContainer({this.addNewTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Column(
            children: [
              Text("Add Task", style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight : FontWeight.w500,
              ),),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (String newValue){
                  newTaskTitle = newValue;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: (){
                  addNewTask(newTaskTitle);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 5.0),
                  child: Text("Add", style:TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


