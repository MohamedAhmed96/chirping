import 'package:flutter/material.dart';

class Continental extends StatefulWidget {
  @override
  _ContinentalState createState() => _ContinentalState();
}

class _ContinentalState extends State<Continental> {
  final List<String> _continentalsList = [
    'EUROPE',
    'AMERICA',
    'AFRICA',
    'ASIA',
    'AUSTRALIA',
    'ANTARCTICA',
  ];
  var _tab = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Expanded(
          child: ListView.builder(
            itemCount: _continentalsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _tab = index;
                  });
                },
                child: (_tab == index)
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding:
                            EdgeInsets.only(left: 5, right: 5, top: 12),
                        margin: EdgeInsets.only(
                          right: 10,
                          top: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          _continentalsList[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(right: 10, top: 20, bottom: 10),
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 12),
                        child: Text(
                          _continentalsList[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                        ),
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}
