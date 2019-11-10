import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help),
          new Icon(Icons.help)
        ],
      ),
    );
  }
}