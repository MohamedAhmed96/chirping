import 'package:flutter/material.dart';

import '../widget/continental.dart';
import '../widget/new_in_catalogue.dart';
import '../widget/music_player.dart';
import '../widget/birds.dart' as Birds;

class ExploreScreen extends StatefulWidget {
  static String routeName = '/explore';

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Container(
                height: 180,
                padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                  color: Colors.orange.withOpacity(0.8),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            'Explore bird talk',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Anton'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.home,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter a search term'),
                            ),
                          ),
                          IconButton(icon: Icon(Icons.search), onPressed: null),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                color: Colors.orange.withOpacity(0.8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40))),
                  child: Continental(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 330,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        Birds.birds[1].imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 65,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'BIRD OF THE WEEK',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          Text(
                            Birds.birds[1].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Anton',
                              fontSize: 35,
                            ),
                          ),
                          Text(
                            Birds.birds[1].subName,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Positioned(
                    left: 15,
                    top: 165,
                    child: MusicPlayer(slide: false , path : Birds.birds[1].path),
                  ),
                ],
              ),
              SizedBox(height: 15),
              NewInCatalogue(),
            ],
          ),
        ),
      ),
    );
  }
}
