import 'package:flutter/material.dart';
import '../Map/Map.dart';

class Scorepage extends StatefulWidget {
  final int score;
  final String passing;
  Scorepage({@required this.score, @required this.passing});
  @override
  _ScoreState createState() => _ScoreState(score1: score, passing2: passing);
}

class _ScoreState extends State<Scorepage> {
  final int score1;
  final String passing2;
  bool un2;
 int sc=0;
  _ScoreState({@required this.score1, @required this.passing2});
 bool getun2(){
   if(score1<=2)
     return true;
   else
     return false;

 }

 int getsc(){

   setState(() {
     sc=sc+1;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF4840B1),
        title: Text('Score'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4840B1),
              Color(0xFFb44BC4),
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Text(
                'your Score is  : $score1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '$passing2',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 120,
              ),
              InkWell(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF99E2B),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 1.0,
                        offset: Offset(5, 5),
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Center(
                    //heightFactor:0.4 ,
                    child: Text(
                      "Done",
                      style: TextStyle(
                        letterSpacing: 3,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                onTap: () {

                  un2=getun2();
                  if(un2==false) sc=getsc();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Map(sc,'Aya','as',un2);
                  }));


                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
