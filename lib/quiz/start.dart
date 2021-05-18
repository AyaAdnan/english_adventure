import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import 'constant.dart';



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
 var color=kBlack;

  int to =5 ;
  int _questionIndex = 0;
  var _totalScore = 0;
 var lesnumber=question;

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  void _answerQuestion(int score) {

    _totalScore += score;


    print(_questionIndex);
    if (_questionIndex < question.length ) {
      print('we have more question !');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


          body:Container(
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(height:0.2,),
                (_questionIndex < question.length&& (_questionIndex != to))?
                Text('Q${_questionIndex+1}/4',
                style: TextStyle(
                  fontSize: 35,
                  color: kOrange
                ),):Text(''),
                //SizedBox(height:4,),


                Column(children: [
                  (_questionIndex < question.length && (_questionIndex != to))
                      ? Column(
                        children: [
                          Quiz(
                    answerQuestion: _answerQuestion,
                    question: question,
                    color: color,
                    questionIndex: _questionIndex,
                  ),
                          InkWell(
                            child: Container(


                              //padding:EdgeInsets.only(top:41) ,
                              child:Container(

                                // margin: EdgeInsets.all(35),
                                // padding: EdgeInsets.all(20),
                                width: double.infinity,
                                height: 60,

                                decoration: BoxDecoration(
                                  color: kOrange,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 1.0,
                                      offset: Offset(5, 5),
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: Center(
                                  //heightFactor:0.4 ,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Next",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize:19,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,size:19,color: kWhiteColor ,),
                                    ],
                                  ),
                                ),
                              ),

                            ),
                           onTap: (){
                             setState(() {

                               _questionIndex = _questionIndex + 1;



                             });
                           },

                          ),
                        ],
                      )
                      : Result(_totalScore, _reset),

                ],),



                  ],



            ),

          ),
      ),
    );
  }
}
