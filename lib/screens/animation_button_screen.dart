import 'dart:math';

import 'package:flutter/material.dart';

class AnimationButtonScreen extends StatefulWidget {
  const AnimationButtonScreen({super.key});

  @override
  State<AnimationButtonScreen> createState() => _AnimationButtonScreenState();
}

class _AnimationButtonScreenState extends State<AnimationButtonScreen> {
  double BoxWidth = 100;
  double BoxHeight = 100;
  final random = Random();
  Color boxColor = Colors.deepPurple;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  void _changeBoxSize() {
    setState(() {
      BoxHeight = random.nextInt(400).toDouble();
      BoxWidth = random.nextInt(400).toDouble();
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }

  void _changeBoxRadius() {
    setState(() {
      _borderRadius = BorderRadius.circular(random.nextInt(256).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: BoxWidth,
          height: BoxHeight,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: _changeBoxColor,
            icon: const Icon(Icons.palette),
          ),
          IconButton(
            onPressed: _changeBoxRadius,
            icon: const Icon(Icons.interests),
          ),
          IconButton(
            onPressed: _changeBoxSize,
            icon: const Icon(Icons.aspect_ratio),
          ),
        ],
      ),
    );
  }
}
