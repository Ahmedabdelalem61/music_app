import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numberOfSound) {
    final player = new AudioCache();
    player.play('note$numberOfSound.wav');
  }

  Expanded BuildAButton({Color color, int numberOfSound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numberOfSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildAButton(color: Colors.blue, numberOfSound: 1),
              BuildAButton(color: Colors.orange, numberOfSound: 2),
              BuildAButton(color: Colors.orangeAccent, numberOfSound: 3),
              BuildAButton(color: Colors.red, numberOfSound: 4),
              BuildAButton(color: Colors.redAccent, numberOfSound: 5),
              BuildAButton(color: Colors.greenAccent, numberOfSound: 6),
              BuildAButton(color: Colors.green, numberOfSound: 7),
            ],
          )),
        ),
      ),
    );
  }
}
