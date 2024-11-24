import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late int askBool;

  @override
  void initState() {
    askBool = 1;
    super.initState();
  }

  void randomBall() {
    setState(() {
      askBool = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GestureDetector(
            onTap: randomBall,
            child: Image.asset("lib/assets/images/ball$askBool.png")),
      ),
    );
  }
}
