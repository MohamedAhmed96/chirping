import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

import '../widget/birds.dart' as Birds;

class NewInCatalogue extends StatefulWidget {
  @override
  _NewInCatalogueState createState() => _NewInCatalogueState();
}

class _NewInCatalogueState extends State<NewInCatalogue> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'NEW IN CATALOGUE',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.withOpacity(0.3))),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                child: Image.asset(
                                    Birds.birds[index + 2].imagePath),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(Birds.birds[index + 2].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Anton')),
                                Text(Birds.birds[index + 2].subName,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: ((Birds.birds.length) - 2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
