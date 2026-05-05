import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          backgroundColor: Colors.red,
          shadowColor: Colors.black,
          elevation: 10.0,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rigthDiceNumber = 1;
  int sumDice = 2;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rigthDiceNumber = Random().nextInt(6) + 1;
      sumDice = leftDiceNumber + rigthDiceNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset("images/dice$rigthDiceNumber.png"),
              ),
            ),
          ],
        ),
        Text(
          "La suma es: $sumDice",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
