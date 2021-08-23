import 'package:flutter/material.dart';
import 'package:to_do_app/screens/screen1.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Models/notifierTaskClass.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
