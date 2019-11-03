import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Media Player',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Player(),
      ),
    ));

class Player extends StatelessWidget {
  void playerAudio(int numberAudio) {
    final player = AudioCache();
    player.play('note$numberAudio.wav');
  }

  Expanded widgetExpanded({Color color, int numberPlayer}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playerAudio(numberPlayer);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          widgetExpanded(color: Colors.red, numberPlayer: 1),
          widgetExpanded(color: Colors.orange, numberPlayer: 2),
          widgetExpanded(color: Colors.yellow, numberPlayer: 3),
          widgetExpanded(color: Colors.green, numberPlayer: 4),
          widgetExpanded(color: Colors.teal, numberPlayer: 5),
          widgetExpanded(color: Colors.blue, numberPlayer: 6),
          widgetExpanded(color: Colors.purple, numberPlayer: 7),
        ],
      ),
    );
  }
}
