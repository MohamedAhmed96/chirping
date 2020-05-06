import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import './slide.dart';

class MusicPlayer extends StatefulWidget {
  final String path;
  final bool slide;
  MusicPlayer({@required this.slide, @required this.path});
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
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

    advancedPlayer.onDurationChanged.listen((Duration d) {
      print('Max duration: $d');
      setState(() => _duration = d);
    });

    advancedPlayer.onAudioPositionChanged.listen((Duration p) {
      print('Current position: $p');
      setState(() => _position = p);
    });
  }

  @override
  void dispose() {
    advancedPlayer.release();
    super.dispose();
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  var _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(60)),
          child: GestureDetector(
            child: Icon(
              _isPlaying ? Icons.pause : Icons.play_arrow,
              size: 30,
            ),
            onTap: () {
              setState(() {
                _isPlaying = !_isPlaying;
              });
              if (_isPlaying) {
                audioCache.play(widget.path);
                advancedPlayer.onPlayerCompletion.listen((event) {
                  setState(() {
                    _isPlaying = false;
                    _position = _duration;
                  });
                });
              } else
                advancedPlayer.pause();
            },
          ),
        ),
        SizedBox(
          width: 20,
        ),
        if (widget.slide)
          Slide(
            duration: _duration,
            position: _position,
            seekToSecond: seekToSecond,
          ),
      ],
    );
  }
}
