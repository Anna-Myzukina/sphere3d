import 'package:flutter/material.dart';
import 'package:sphere_3d/widgets/wave_painter.dart';

class BuildWave extends StatelessWidget {
  const BuildWave({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 40,
      //color: Colors.green,
      child: CustomPaint(painter: WaveBasePainter(),),
      // child: CustomPaint(
      //   painter: ),
    );
  }
}