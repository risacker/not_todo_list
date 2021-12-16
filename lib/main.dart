import 'package:flutter/material.dart';
import './taskmanager.dart';
import './showtasks.dart';
import './description.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/details': (BuildContext context) => detailsWindow(t)
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('NOT TODO LIST'),
        ),
        body: taskManager(),
      ),
    );
  }
}
