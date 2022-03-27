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
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.brown,
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text('Click'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text('Click'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
