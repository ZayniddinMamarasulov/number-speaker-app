import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('number_$soundNumber.wav');
    print('sound: $soundNumber');
  }

  Expanded numberButtons({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: Text(
          '$soundNumber',
          style: TextStyle(
            color: Colors.white,
            fontSize: 72,
          ),
        ),
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButtons(
                    color: Colors.teal,
                    soundNumber: 0,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButtons(
                    color: Colors.red,
                    soundNumber: 1,
                  ),
                  numberButtons(
                    color: Colors.yellow,
                    soundNumber: 2,
                  ),
                  numberButtons(
                    color: Colors.blue,
                    soundNumber: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButtons(
                    color: Colors.blueGrey,
                    soundNumber: 4,
                  ),
                  numberButtons(
                    color: Colors.pink,
                    soundNumber: 5,
                  ),
                  numberButtons(
                    color: Colors.amberAccent,
                    soundNumber: 6,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButtons(
                    color: Colors.pink,
                    soundNumber: 7,
                  ),
                  numberButtons(
                    color: Colors.lightGreenAccent,
                    soundNumber: 8,
                  ),
                  numberButtons(
                    color: Colors.black54,
                    soundNumber: 9,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButtons(
                    color: Colors.indigoAccent,
                    soundNumber: 10,
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
