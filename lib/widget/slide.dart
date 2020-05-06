import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  final Duration position;
  final Duration duration;
  final seekToSecond;

  Slide({
    @required this.position,
    @required this.duration,
    @required this.seekToSecond,
  });
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.orange.withOpacity(0.8),
      value: widget.position.inSeconds.toDouble(),
      min: 0.0,
      max: widget.duration.inSeconds.toDouble(),
      onChanged: (double value) {
        setState(() {
          widget.seekToSecond(value.toInt());
          value = value;
        });
      },
    );
  }
}
