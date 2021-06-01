import 'package:flutter/material.dart';
import 'constant.dart';


class Result extends StatelessWidget {
   String img;
  final int score;
  final Function resitHandler;
  Result(this.score, this.resitHandler);

  String get resultPhrase {
    var text;
    if (score <2) {
      text = 'Fail';

    } else if (score <2 && score >= 4) {
      text = 'Pass';
    } else if (score == 5) {
      text = 'Very Good ! ';
    }
    return text;

  }

  String get imgpath{
    var imgpathe;
    if (score <2) {
      imgpathe='assets/fail.png';

    } else if (score <2 && score >= 4) {
      imgpathe='pass.png';
    } else if (score == 5) {
      imgpathe='Win.png';
    }
    return imgpathe;

  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
          children: [ //Container(height:120,width:120,child: Image(image:AssetImage(imgpath),fit: BoxFit.fill,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

               Text('$score/5',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: kOrange),),
                Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: kWhiteColor),
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                  color: kOrange,
                  child: Text('Restart'),
                  onPressed: resitHandler,
                ),
                SizedBox(height:150),
              ],

    ),
          ],
        ),
      );
  }
}
