import 'package:flutter/material.dart';
import 'constant.dart';


class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              questionText,
              style: TextStyle(fontSize: 25,
              color: kWhiteColor,),
              textAlign: TextAlign.left,
            ),

        ),
        Divider(thickness: 3,color: kWhiteColor,
       ),
        SizedBox(height: 13,),
      ],
    );
  }
}
