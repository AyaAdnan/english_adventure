import 'package:flutter/material.dart';
import 'constant.dart';


class Answer extends StatefulWidget {
  final Function selectedHandler;
  final String answerText;
  var color;
  final score;
  Answer(this.selectedHandler, this.answerText,this.color,this.score);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {




 checkanswer(){

   setState(() {
     if(widget.score==1 )
     {

       widget.color=kGreen;
     }
     else{

       widget.color=kRed;

     }
   });

   widget.selectedHandler();
 }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 50,
          width: double.infinity,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20),
              side: BorderSide(color: widget.color,width: 3),
            ),
            textColor: kBlack,
            color: kWhiteColor,
            child: Text(widget.answerText),
            onPressed:checkanswer,

          ),
        ),
        SizedBox(height: 15,),
      ],
    );

  }
}
