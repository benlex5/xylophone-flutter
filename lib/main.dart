import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded buildbutton({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildbutton(color: Colors.red, SoundNumber: 1),
                buildbutton(color: Colors.blue, SoundNumber: 2),
                buildbutton(color: Colors.green, SoundNumber: 3),
                buildbutton(color: Colors.orange, SoundNumber: 4),
                buildbutton(color: Colors.pink, SoundNumber: 5),
                buildbutton(color: Colors.lime, SoundNumber: 6),
                buildbutton(color: Colors.lightGreen, SoundNumber: 7),
              ],
            ),
          )),
    );
  }
}
