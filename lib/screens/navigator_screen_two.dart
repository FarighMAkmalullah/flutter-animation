import 'package:flutter/material.dart';

class NavigatorScreenTwo extends StatefulWidget {
  const NavigatorScreenTwo({super.key});

  @override
  State<NavigatorScreenTwo> createState() => _NavigatorScreenTwoState();
}

class _NavigatorScreenTwoState extends State<NavigatorScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two Navigator'),
      ),
      body: Center(
        child: Text('Screen Two'),
      ),
    );
  }
}
