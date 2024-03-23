import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/animation_button_screen.dart';
import 'package:flutter_animation/screens/animation_luar_screen.dart';
import 'package:flutter_animation/screens/animation_navigator_screen.dart';
import 'package:flutter_animation/screens/animation_textkit_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Animasi Flutter'),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimationButtonScreen(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: const Text('Animasi Container Flutter'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimationTextKitScreen(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: const Text('Animasi Text Flutter'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimationNavigatorScreen(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: const Text('Animasi Navigasi Flutter'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimationLuarScreen(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: const Text('Animasi Dari Luar'),
            ),
          ),
        ],
      ),
    );
  }
}
