import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playSound(String fileName){
    final player = AudioCache();
    player.play(fileName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    playSound("note1.wav");
                  },
                ),
              ),
              Container(
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    playSound("note2.wav");
                  },
                ),
              ),
              Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    playSound("note3.wav");
                  },
                ),
              ),
              Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    playSound("note4.wav");
                  },
                ),
              ),
              Container(
                color: Colors.green.shade900,
                child: TextButton(
                  onPressed: () {
                    playSound("note5.wav");
                  },
                ),
              ),
              Container(
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    playSound("note6.wav");
                  },
                ),
              ),
              Container(
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {
                    playSound("note7.wav");
                  },
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}
