import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_controls.dart';

class FlarePage extends StatefulWidget {
  @override
  _FlareState createState() => _FlareState();
}

class _FlareState extends State<FlarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FlareActor(
              "assets/HeartBeat.flr",
              animation: "broken_heart_beat",
            ),
          ],
        ),
      ),
    );
  }
}
