import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class listTileWidget extends StatefulWidget {

  final stringText;
  listTileWidget({this.stringText});

  @override
  _listTileWidgetState createState() => _listTileWidgetState();
}

// ignore: camel_case_types
class _listTileWidgetState extends State<listTileWidget> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title : Text(
          widget.stringText,
          style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing : taskCheckBox(
        checkBoxValue: isChecked,
        toggleCheckBoxState: (checkBoxState){
          setState(() {
            isChecked = checkBoxState;
          });
        },
      ),
    );
  }
}

// ignore: camel_case_types
class taskCheckBox extends StatelessWidget {

  final checkBoxValue;
  final toggleCheckBoxState;

  taskCheckBox({this.checkBoxValue,this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxValue,
      onChanged: toggleCheckBoxState,
    );
  }
}