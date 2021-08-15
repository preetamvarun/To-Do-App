import 'package:flutter/material.dart';
import 'package:to_do_app/widgetsDir/listTiles.dart';

// ignore: camel_case_types
class taskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        listTileWidget(stringText: "Buy Butter Milk",),
        listTileWidget(stringText: "Develop Flutter Projects",),
        listTileWidget(stringText: "Do Front End",),
        listTileWidget(stringText: "Do Cp",)
      ],
    );
  }
}
