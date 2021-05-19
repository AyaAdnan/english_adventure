import 'package:flutter/material.dart';

const kOrange =Color(0xFFF99E2B);
const kWhiteColor = Colors.white;
const kBlack = Colors.black;
const kGreen =Colors.green;
const kRed =Colors.red;
const kPrimaryGradient =LinearGradient(
  colors:[
    Color(0xFF4840B1),
    Color(0xFFb44BC4),
  ],
  begin: FractionalOffset.topLeft,
  end: FractionalOffset.bottomRight,
);

final question = const [
  {
    // unit 1 le 1 index 0
    'questionText': 'What\'s the meaning of Grandfather ? ',
    'answers': [
      {'text': 'الام', 'Score': 0},
      {'text': 'الجد', 'Score': 1},
      {'text': 'الجدة', 'Score': 0},
      {'text': 'العم', 'Score': 0}
    ]
  },
  {
    'questionText': 'Aunt X ------ ',
    'answers': [
      {'text': 'Mother', 'Score': 0},
      {'text': 'Sister', 'Score': 0},
      {'text': 'Grandmother', 'Score': 0},
      {'text': 'Uncle', 'Score': 1}
    ]
  },
  {
    'questionText': 'How old --- Wisam ? ',
    'answers': [
      {'text': 'is', 'Score': 1},
      {'text': 'are', 'Score': 0},
      {'text': 'you', 'Score': 0},
      {'text': 'am', 'Score': 0}
    ]
  },
  {
    'questionText': 'How many Sisters ---- you have ?  ',
    'answers': [
      {'text': 'do', 'Score': 0},
      {'text': 'does', 'Score': 1},
      {'text': 'he', 'Score': 0},
      {'text': 'I', 'Score': 0}
    ]
  },
  {
    'questionText': 'Sister X -----',
    'answers': [
      {'text': 'Mother', 'Score': 0},
      {'text': 'Cousin', 'Score': 0},
      {'text': 'Brother', 'Score': 1},
      {'text': 'Grandfather', 'Score': 0}
    ]
  },


  // unit 1 le 2 index 5

  {
    'questionText': 'What\'s your favorite Color ? ',
    'answers': [
      {'text': 'Red', 'Score': 0},
      {'text': 'Green', 'Score': 1},
      {'text': 'blue', 'Score': 0},
      {'text': 'yellow', 'Score': 0}
    ]
  },
  {
    'questionText': 'What\'s your favorite Color ? ',
    'answers': [
      {'text': 'Red', 'Score': 0},
      {'text': 'Green', 'Score': 1},
      {'text': 'blue', 'Score': 0},
      {'text': 'yellow', 'Score': 0}
    ]
  },
  {
    'questionText': 'What\'s your favorite Color ? ',
    'answers': [
      {'text': 'Red', 'Score': 0},
      {'text': 'Green', 'Score': 1},
      {'text': 'blue', 'Score': 0},
      {'text': 'yellow', 'Score': 0}
    ]
  },
  {
    'questionText': 'What\'s your favorite Color ? ',
    'answers': [
      {'text': 'Red', 'Score': 0},
      {'text': 'Green', 'Score': 1},
      {'text': 'blue', 'Score': 0},
      {'text': 'yellow', 'Score': 0}
    ]
  },
  {
    'questionText': 'What\'s your favorite Color ? ',
    'answers': [
      {'text': 'Red', 'Score': 0},
      {'text': 'Green', 'Score': 1},
      {'text': 'blue', 'Score': 0},
      {'text': 'yellow', 'Score': 0}
    ]
  }
];
