import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:english_adventure/quiz/constant.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

class LocalAudio extends StatefulWidget {
  String path = 'disco.mp3';
  @override
  _LocalAudio createState() =>  _LocalAudio(path);
}

class _LocalAudio extends State<LocalAudio> {



  String localFilePath;

  _LocalAudio(this.localFilePath);



  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }



  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            slider(),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: children
                    .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                    .toList(),

              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(
        width: 150,
        height: 45,
        child: RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child:(txt == 'play')? Icon(Icons.play_arrow_rounded):Icon(Icons.pause),
            color: kOrange,
            textColor: kWhiteColor,
            onPressed: onPressed),
      ),
    );
  }

  Widget slider() {
    return Slider(
        activeColor: kWhiteColor,
        inactiveColor: kOrange,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }

  Widget LocalAudio() {

    return _tab([

      _btn('play', () => audioCache.play(localFilePath)),
      _btn('Pause', () => advancedPlayer.pause()),

    ]);

  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }


  //    1-   the main when start go here
  @override
  Widget build(BuildContext context) {
    return LocalAudio();
  }
}
