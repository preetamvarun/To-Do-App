import 'package:flutter/material.dart';

class listTileWidget extends StatelessWidget {

  final stringText;

  listTileWidget({this.stringText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading : Text(stringText, style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),),
      trailing : Icon(Icons.check_box_outline_blank),
    );
  }
}