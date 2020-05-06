import 'package:flutter/material.dart';

class Birds {
  final String name;
  final String subName;
  final String occurence;
  final String diet;
  final String overView;
  final String path;
  final String imagePath;

  Birds({
    @required this.name,
    this.subName,
    @required this.occurence,
    @required this.diet,
    @required this.overView,
    @required this.path,
    @required this.imagePath,
  });
}

List<Birds> _birds = [
  Birds(
    name: 'Eurasian blue tit',
    subName: '(Cyanistes caeruleus)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds2.PNG'
  ),
  Birds(
    name: 'Bullfinch',
    subName: '(Pyrrhula pyrrhula)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds3.PNG',
  ),
  Birds(
    name: 'Yellowhammer',
    subName: '(Emberiza citrinella)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds5.PNG',
  ),
  Birds(
    name: 'Yellowhammer',
    subName: '(Emberiza citrinella)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds6.PNG',
  ),
  Birds(
    name: 'Yellowhammer',
    subName: '(Emberiza citrinella)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds5.PNG',
  ),
  Birds(
    name: 'Yellowhammer',
    subName: '(Emberiza citrinella)',
    occurence: 'Subarctic Europe. \n Western Asia',
    diet: 'insects, spiders \n seeds',
    overView:
        'Small passerine bird in the tit family. Paridae. It is easy recognisable by it\'s blue and yellow plumage and small size',
    path: 'song.mp3',
    imagePath: 'lib/assets/images/birds6.PNG',
  ),
];

List<Birds> get birds {
  return [..._birds];
}
