import 'package:flutter/material.dart';
import 'constant.dart';


class Result extends StatelessWidget {
  final int score;
  final Function resitHandler;
  Result(this.score, this.resitHandler);

  String get resultPhrase {
    var text;
    if (score <5) {
      text = 'Fail';

    } else if (score <9 && score > 5) {
      text = 'Pass';
    } else if (score == 10) {
      text = 'Very Good ! ';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

         Text('$score/10',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: kOrange),),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: kWhiteColor),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart'),
            onPressed: resitHandler,
          ),
          SizedBox(height:150),
        ],
      ),
    );
  }
}