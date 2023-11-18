import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Sound extends StatefulWidget {
  const Sound({super.key});

  @override
  State<Sound> createState() => _SoundState();
}

class _SoundState extends State<Sound> {
  
   Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}){
    return Expanded (
      child: TextButton(
        onPressed: (){
          playSound(soundNumber!);
        },
        style: TextButton.styleFrom(
             backgroundColor: color
        ), 
        child: const Text("")
      )
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.orange, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.yellow, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
            ] ,
           
          ),
        ),
      );
  }
}