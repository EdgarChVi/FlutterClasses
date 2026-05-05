import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(home: XyloPage()));
}

// void main() => runApp(MaterialApp(home: XyloPage()));

class XyloPage extends StatelessWidget {
  const XyloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Xylophone"),
        titleTextStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue[900],
        elevation: 20.0,
        shadowColor: Colors.black,
      ),
      body: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int key, Color col) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(key);
        },
        child: Container(color: col),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.green.shade700),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
