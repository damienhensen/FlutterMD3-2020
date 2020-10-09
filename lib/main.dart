import 'package:flutter/material.dart';
import 'package:hello_md3/myWidget.dart';
import 'snackbarWidget.dart';

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
          body: ListView(
            children: [
              SnackBarPage(),
              Center(
                  child: Column(
                children: [
                  MyWidget(),
                  MyWidget(),
                  MyWidget(),
                  MyWidget(),
                  MyWidget(),
                  buildMyWidget("Damien", 60.0),
                  buildMyWidget("Johan", 50.0),
                  buildMyWidget("klaas", 80.0),
                  buildMyWidget("Silvan", 120.0),
                  buildMyWidget("Robin", 40.0),
                  buildMyWidget("Simon", 70.0),
                ],
              )),
            ],
          )),
    );
  }

  Widget buildMyWidget(var name, var height) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        color: Colors.blue,
        height: height,
        width: 200,
        child: Text(name),
      ),
    );
  }
}
