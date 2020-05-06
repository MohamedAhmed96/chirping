import 'package:flutter/material.dart';

import '../widget/music_player.dart';
import '../widget/birds.dart' as Birds;

class BirdScreen extends StatefulWidget {
  static String routeName = '/bird_Screen';
  @override
  _BirdScreenState createState() => _BirdScreenState();
}

class _BirdScreenState extends State<BirdScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 35, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Stack(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('YOU\'RE HEARING',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(Birds.birds[0].name,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Anton')),
                    Text(Birds.birds[0].subName,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber)),
                    SizedBox(height: 300),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('OCCURRENCE',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text(Birds.birds[0].occurence,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300)),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('DIET',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text(Birds.birds[0].diet,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MusicPlayer(slide: true, path: Birds.birds[0].path),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('OVERVIEW',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(
                          Birds.birds[0].overView,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  color: Colors.white,
                  height: 260,
                  width: 360,
                  child: ClipRRect(
                    child: Image.asset(
                      Birds.birds[0].imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
