import 'package:flutter/material.dart';
import 'tracking_input.dart';
import 'flare_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repara Corazones',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: FlarePage(),
    );
  }
}
