import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.deepPurple, soundNumber: 1),
              buildKey(color: Colors.indigo, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.red, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(int i) {
  final audioPlayer = AudioCache();
  audioPlayer.play('note$i.wav');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ),
  );
}
