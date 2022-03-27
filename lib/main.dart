import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylo());
}

class Xylo extends StatelessWidget {
  const Xylo({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey() {
    return Expanded(
        child: FlatButton(
      color: Colors.greenAccent,
      onPressed: () {
        playSound(7);
      },
      child: Text('Click'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.green, soundNumber: 7),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.red, soundNumber: 5),
              buildKey(color: Colors.brown, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.purple, soundNumber: 2),
              buildKey(color: Colors.orange, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
