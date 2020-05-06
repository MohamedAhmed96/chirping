import 'package:flutter/material.dart';

import './bird_screen.dart';
import './explore_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(bottom: 10),
        color: Colors.orange.withOpacity(0.8),
        height: double.infinity,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 80, bottom: 40),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  'WANT TO KNOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'Who\'s chirping ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Anton',
                      fontSize: 35),
                ),
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Image.asset(
                    'lib/assets/images/birds1.PNG',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: GestureDetector(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.mic,
                            color: Colors.orange.withOpacity(0.8),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'LET US HEAR IT',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, BirdScreen.routeName);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                      border: Border.all(color: Colors.black, width: 2.5)),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        'EXPLORE BIRD TALK',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, ExploreScreen.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
