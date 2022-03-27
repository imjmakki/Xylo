import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylo());
}

class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  State<Xylo> createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
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
                  final player = AudioCache();
                  player.play('note1.wav');
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
                color: Colors.amberAccent,
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
                color: Colors.lightBlue,
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
