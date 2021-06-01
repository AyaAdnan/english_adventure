import 'package:flutter/material.dart';
import 'dart:async';
import 'package:english_adventure/Map/Map.dart';





class Load extends StatefulWidget {
  int score;
  String name , img ;
  Load(this.score,this.name,this.img);
  @override
  _LoadState createState() => _LoadState(score,name,img);
}

class _LoadState extends State<Load> {
  int score;
  String name , img ;
  _LoadState(this.score,this.name,this.img);
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (BuildContext context) => Map(score,name,img)));
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        //Background Color
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors:[
        Color(0xFF4840B1),
        Color(0xFFb44BC4),
    ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
    ),
    ),
     child:Container(
      padding: EdgeInsets.only(top:9),
     margin: EdgeInsets.only(top: 11),
     child:Image.asset('lib/assets/load.png',
     //height: 690,
       //width: 690,
       //fit: BoxFit.cover,

     ),
    ),
      ),
    );
  }

  }


