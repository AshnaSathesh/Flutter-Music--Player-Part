import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class LocalAudio extends StatefulWidget {
  @override
  _LocalAudioState createState() => _LocalAudioState();
}

class _LocalAudioState extends State<LocalAudio> {
  Duration _duration = Duration();
  Duration _position = Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }
  void initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }
  String localFilePath;

  Widget _tab(List<Widget>children){
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: children
            .map((w) => Container(child: w,padding: EdgeInsets.all(6.0)))
            .toList()
          ),
        )
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onPressed){
    return ButtonTheme(
      minWidth: 48.0,
      child:Container(
        width: 150.0,
        height: 45,
        child: RaisedButton(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Text(txt),
          color:Colors.pink[900],
          textColor: Colors.white,
          onPressed: onPressed,
        ),
      )
    );
  }

  Widget slider(){
    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.pink,
      value: _position.inSeconds.toDouble(),
      min:0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (double value){
        setState(() {
          seekToSecond(value.toInt());
          value = value;
        });
      },
    );
  }

  Widget localAudio(){
    return _tab([
      _btn('Play',() => audioCache.play('dark.mp3')),
      _btn('Pause',() => advancedPlayer.pause()),
      _btn('Stop',() => advancedPlayer.stop()),
      slider()
    ]);
  }

  void seekToSecond(int second){
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: TabBarView(
          children: <Widget>[localAudio()],
        ),
      ),
    );
  }
}
