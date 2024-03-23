import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationTextKitScreen extends StatefulWidget {
  const AnimationTextKitScreen({super.key});

  @override
  State<AnimationTextKitScreen> createState() => _AnimationTextKitScreenState();
}

class _AnimationTextKitScreenState extends State<AnimationTextKitScreen> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 20.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Text'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText(
                  'Fade Animasi Untuk Text',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                FadeAnimatedText(
                  'Aplikasi Flutter',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                RotateAnimatedText(
                  'Rotasi Animasi Untuk Text',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  'Ketikan Animasi Untuk Text dalam aplikasi FLutter',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Ketikan Penulis Animasi Untuk Text dalam aplikasi',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ScaleAnimatedText('Scale'),
                ScaleAnimatedText('Animasi'),
                ScaleAnimatedText('Untuk'),
                ScaleAnimatedText('Text'),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  'Animasi Warna',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Untuk Text',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Alplikasi Flutter',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText(
                  'Wavy Animasi Untuk Text dalam aplikasi',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText(
                  'Flicker Animasi Untuk Text dalam aplikasi',
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
