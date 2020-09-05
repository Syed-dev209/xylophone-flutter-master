import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int a)
  {
    final player = AudioCache(); //This creates our player
    player.play('note$a.wav'); //we don't have to tell that audio is in assets it already assumes that file are im asssets folder
  }
  Expanded buildKey({Color color,int soundFile})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: ()
        {
          playsound(soundFile);
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
              buildKey(color:Colors.deepOrange,soundFile: 1),
              buildKey(color:Colors.orange,soundFile: 2),
              buildKey(color:Colors.yellow,soundFile: 3),
              buildKey(color:Colors.green,soundFile: 4),
              buildKey(color:Colors.teal,soundFile: 5),
              buildKey(color:Colors.blue,soundFile: 6),
              buildKey(color:Colors.purple,soundFile: 7),

            ],
          ),
        ),
      ),
    );
  }
}
