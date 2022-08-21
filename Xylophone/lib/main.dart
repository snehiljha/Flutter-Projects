import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({color, Num}) {
    return Expanded(
      child: FlatButton(
        height: 100.0,
        color: color,
        onPressed: () {
          sound(Num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, Num: 1),
              buildKey(color: Colors.orange, Num: 2),
              buildKey(color: Colors.yellow, Num: 3),
              buildKey(color: Colors.green, Num: 4),
              buildKey(color: Colors.lightGreen, Num: 5),
              buildKey(color: Colors.lightBlueAccent, Num: 6),
              buildKey(color: Colors.purple, Num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
