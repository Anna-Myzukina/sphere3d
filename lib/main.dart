import 'package:flutter/material.dart';
import 'package:sphere_3d/widgets/build_player.dart';
import 'package:sphere_3d/widgets/build_wave.dart';

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
          Positioned(
            width: width,
            height: height,
            child: Material(
              elevation: 16,
              color: const Color(0xFFd6dde5),
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
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
                    const BuildPlayer(),
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: const [
                        Text('time'),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(child: BuildWave()),
                        SizedBox(
                          width: 8,
                        ),
                        Text('end'),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



