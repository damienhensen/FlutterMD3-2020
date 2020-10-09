import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  var text = "Widget Class";

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print('tapped');
          this.setState(() {
            text = shuffleString(text);
          });
        },
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            color: Colors.deepPurple,
            height: 50,
            width: 200,
            child: Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
          ),
        ));
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
