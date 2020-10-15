import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

Expanded flat(num) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play('note$num.wav');
      },
      child: Text('click here'),
      color: Colors.blue[num * 100],
    ),
  );
}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              flat(1),
              flat(2),
              flat(3),
              flat(4),
              flat(5),
              flat(6),
              flat(7),
            ],
          ),
        ),
      ),
    );
  }
}
