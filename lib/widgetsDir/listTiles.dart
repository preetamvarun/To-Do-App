import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class listTileWidget extends StatelessWidget {

  final isChecked;
  final stringText;
  final onChanged;

  listTileWidget({this.stringText,this.isChecked,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        stringText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}