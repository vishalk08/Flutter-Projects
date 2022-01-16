import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int fileNo;
  void playSound(fileNo) {
    final player = AudioCache();
    player.play('note$fileNo.wav');
  }

 Expanded buildUI(int musicNo,Color colorname){
  return Expanded(
    child: FlatButton(
      color: colorname,
      onPressed: () {
        playSound(musicNo);
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
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
                buildUI(1,Colors.red),
                buildUI(5,Colors.deepOrange),
                buildUI(2,Colors.blue),
                buildUI(3,Colors.yellow),
                buildUI(4,Colors.teal),
                buildUI(6,Colors.pink),
                buildUI(7,Colors.cyan),
                  /*Expanded(
                    child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      playSound(2);
                    },
                ),
                  ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.teal,
                    onPressed: () {
                      playSound(5);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
