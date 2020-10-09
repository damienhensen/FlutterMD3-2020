import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        color: Colors.blue,
        height: 20,
        width: 200,
        child: Text("Widget Class",
            textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}