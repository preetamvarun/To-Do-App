import 'package:flutter/material.dart';

// ignore: camel_case_types
class listTileWidget extends StatelessWidget {

  final stringText;
  bool checkedValue=false;

  listTileWidget({this.stringText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading : Text(stringText, style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),),
      trailing : Checkbox(
        value: checkedValue,
        onChanged: (bool? value) {  },
      ),
    );
  }
}