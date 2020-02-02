import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'flare_controller.dart';

class TrackingInput extends StatefulWidget {
  @override
  TrackingState createState() => TrackingState();
}

class TrackingState extends State<TrackingInput> {
  AnimationControls _flareController;
  final FlareControls plusWaterControl = FlareControls();

  int currentWaterCount = 0;
  int waterMaxAcount = 0;
  int selectGlasses = 8;

  static const int ouncePerGlass = 8;

  void initState() {
    _flareController = AnimationControls();
    super.initState;
  }

  void _incrementWater() {
    currentWaterCount = currentWaterCount + 1;
    plusWaterControl.play("plus press");

    double diff = currentWaterCount / selectGlasses;
    _flareController.updateWaterPercent(diff);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        color: Colors.grey,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FlareActor(
              "assets/HeartBeat.flr",
              animation: "broken_heart_beat",
              artboard: "Artboard",
            ),
          ],
        ),
      ),
    );
  }
}
