import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PlayerApp(),
  ));
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              const Text('Music Title'),
              const SizedBox(
                height: 15,
              ),
              const Text('Music artist'),
              const SizedBox(
                height: 75,
              ),
              builderRecordPlayer(),
            ],
          )
        ],
      ),
    );
  }

  Widget builderRecordPlayer() {
    return Container(
      height: 290,
      width: 290,
      alignment: Alignment.center,
      //color: Colors.green,
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     Colors.blue, Colors.purpleAccent
        //   ],
        //   //stops: [-0.5, 1.05],
        //   transform: GradientRotation(0.6)
        // ),
        image: DecorationImage(
          image: AssetImage('assets/images/vinyl.png'),
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(Colors.blueAccent, 
          BlendMode.color),
        ),
        shape: BoxShape.circle

      ),
      child: ClipOval(
        child: Image.asset('assets/images/angel.jpeg',
        height: 150,
        width: 150,
        fit: BoxFit.cover,
        )),
    );
  }
}
