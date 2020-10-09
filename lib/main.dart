import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Our first App"),
        ),
        body: Center(
            child: Column(
          children: [
            buildMyWidget(),
            buildMyWidget(),
            buildMyWidget(),
            buildMyWidget(),
          ],
        )),
      ),
    );
  }

  Widget buildMyWidget() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        color: Colors.blue,
        height: 200,
        width: 200,
      ),
    );
  }
}
