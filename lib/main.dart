import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/bird_screen.dart';
import './screens/explore_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chirping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        BirdScreen.routeName: (ctx) => BirdScreen(),
        ExploreScreen.routeName: (ctx) => ExploreScreen(),
      },
    );
  }
}
