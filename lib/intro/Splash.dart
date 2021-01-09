import 'package:flutter/material.dart';
import 'dart:async';
import 'package:english_adventure/Map/Map.dart';





class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (BuildContext context) => Map()));
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


