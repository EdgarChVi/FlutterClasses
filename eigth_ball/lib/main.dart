import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: BallPage()));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        titleTextStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue[900],
        elevation: 10.0,
        shadowColor: Colors.black,
      ),
      backgroundColor: Colors.blue[600],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState = 1;

  void changeState() {
    setState(() {
      ballState = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            changeState();
          },
          child: Image.asset("images/ball$ballState.png"),
        ),
      ],
    );
  }
}
