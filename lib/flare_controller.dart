import 'dart:math';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_dart/actor.dart';
import 'package:flare_flutter/flare_controller.dart';

class AnimationControls extends FlareController {
  ActorAnimation _fillAnimation;
  ActorAnimation _iceboyMoveY;

  double _waterFill = 0.00;
  double _currentWaterFill = 0;
  double _smoothTime = 5;

  @override
  void initialize(FlutterActorArtboard artboard) {
    if (artboard.name.compareTo("Artboard") == 0) {
      _fillAnimation = artboard.getAnimation("water up");
      _iceboyMoveY = artboard.getAnimation("broken_heart_beat");
    }
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (artboard.name.compareTo("Artboard") == 0) {
      _currentWaterFill +=
          (_waterFill - _currentWaterFill) * min(1, elapsed * _smoothTime);
      _fillAnimation.apply(
          _currentWaterFill * _fillAnimation.duration, artboard, 1);
      _iceboyMoveY.apply(
          _currentWaterFill * _iceboyMoveY.duration, artboard, 1);
    }
    return true;
  }

  void updateWaterPercent(double amt) {
    _waterFill = amt;
  }

  void resetWater() {
    _waterFill = 0;
  }
}
