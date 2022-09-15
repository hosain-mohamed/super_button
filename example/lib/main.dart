import 'package:flutter/material.dart';
import 'package:super_button/super_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SuperButton(
          outSideColor: Colors.teal,
          insideColor: Colors.amberAccent,
          outerSize: 180,
          innerSize: 150,
          buttonText: "Done"),
    );
  }
}
