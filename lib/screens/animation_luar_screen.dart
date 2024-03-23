import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLuarScreen extends StatefulWidget {
  const AnimationLuarScreen({super.key});

  @override
  State<AnimationLuarScreen> createState() => _AnimationLuarScreenState();
}

class _AnimationLuarScreenState extends State<AnimationLuarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animasi dari Luar'),
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/animation/loading1.json'),
          Lottie.asset('assets/animation/loading2.json'),
          Lottie.asset('assets/animation/loading3.json'),
        ],
      ),
    );
  }
}
