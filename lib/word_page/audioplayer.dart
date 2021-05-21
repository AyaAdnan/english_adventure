import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);



class LocalAudio extends StatefulWidget {

  String path ;
  LocalAudio(this.path);
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
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: children
                .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _btn( VoidCallback onPressed) {
    return InkWell(
      child: Icon(
        Icons.volume_up,
        size: 40,
        color: Color(0xFF4840B1),
      ),
      onTap: onPressed,
    );
    // return ButtonTheme(
    //   minWidth: 48.0,
    //   child: Container(
    //     width: 150,
    //     height: 45,
    //     child: RaisedButton(
    //         shape:
    //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    //         child: Text(txt),
    //         color: Colors.pink[900],
    //         textColor: Colors.white,
    //         onPressed: onPressed),
    //   ),
    // );
  }


  Widget LocalAudio() {
    return _tab([
      _btn(() => audioCache.play('${localFilePath}.mp3')),

      // slider()
    ]);
  }


  @override
  Widget build(BuildContext context) {
    return LocalAudio();

  }
}
