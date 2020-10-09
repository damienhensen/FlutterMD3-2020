import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
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

  String shuffleString(String str) {
    var list = str.split('');
    list.shuffle();
    str = '';

    for (var s in list) {
      str += s;
    }

    return str;
  }
}
