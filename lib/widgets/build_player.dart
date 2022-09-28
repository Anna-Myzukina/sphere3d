import 'package:flutter/material.dart';

class BuildPlayer extends StatelessWidget {
  const BuildPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 290,
      alignment: Alignment.center,
      //color: Colors.green,
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     Colors.blue, Colors.purpleAccent
        //   ],
        //   //stops: [-0.5, 1.05],
        //   transform: GradientRotation(0.6)
        // ),
        image: const DecorationImage(
          image: AssetImage('assets/images/vinyl.png'),
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(Color(0xFF9678dd), BlendMode.color),
        ),
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors.blueGrey, strokeAlign: StrokeAlign.outside, width: 4),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.white, strokeAlign: StrokeAlign.outside, width: 1),
        ),
        child: ClipOval(
            child: Image.asset(
          'assets/images/default.jpeg',
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
