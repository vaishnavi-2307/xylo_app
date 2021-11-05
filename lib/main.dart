import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //static AudioCache player = AudioCache();
  // AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  // ignore: non_constant_identifier_names
  void PlaySound(int notenum) {
    final player = AudioCache();
    player.play('note$notenum.wav');
  }

// ignore: non_constant_identifier_names
  Expanded BuildKey({Color color, int notenum, MaterialColor Color}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        color: Color,
        onPressed: () {
          PlaySound(notenum);
        },
        child: null,
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
              BuildKey(Color: Colors.red, notenum: 1),
              BuildKey(Color: Colors.orange, notenum: 2),
              BuildKey(Color: Colors.yellow, notenum: 3),
              BuildKey(Color: Colors.green, notenum: 4),
              BuildKey(Color: Colors.blue, notenum: 5),
              BuildKey(Color: Colors.indigo, notenum: 6),
              BuildKey(Color: Colors.purple, notenum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
