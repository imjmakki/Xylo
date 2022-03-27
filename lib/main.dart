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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  playSound();
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.brown,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.amber,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                child: Text('Click'),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                child: Text('Click'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
