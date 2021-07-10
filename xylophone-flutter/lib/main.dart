import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            enableFeedback: false,
          ),
          onPressed: () {
            playSound(1);
          }
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
            children: [
              buildKey(Colors.blue, 1),
              buildKey(Colors.red, 2),
              buildKey(Colors.orange, 3),
              buildKey(Colors.teal, 4),
              buildKey(Colors.pink, 5),
              buildKey(Colors.amber, 6),
              buildKey(Colors.deepPurpleAccent, 7)
            ],
          ),
        ),
      ),
    );
  }
}
