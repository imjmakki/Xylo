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

  void buildKey() {
    Expanded(
      child: FlatButton(
        color: Colors.greenAccent,
        onPressed: () {
          playSound(7);
        },
        child: Text('Click'),
      ),
    );
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
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
            ],
          ),
        ),
      ),
    );
  }
}
