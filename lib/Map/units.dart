import 'package:english_adventure/Drawer/Drawer.dart';
import 'package:english_adventure/Map/unpage.dart';
import 'package:flutter/material.dart';

import 'unit_exam.dart';










class Units extends StatefulWidget {
  int unname;
  int score;
  String name , img ;


  Units(this.unname,this.score,this.name,this.img);
  @override
  _UnitsState createState() => _UnitsState(unname,score,name,img);
}

class _UnitsState extends State<Units> {

int unname;
int unless;
int score;
String name , img ;

_UnitsState(this.unname,this.score,this.name,this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Unit $unname',

            //textAlign: TextAlign.center,
          ),


          centerTitle: true,

          actions: <Widget>[
            Directionality(textDirection: TextDirection.ltr, child:
            Container(



              padding: EdgeInsets.only(left: 0,top: 2,),
              margin: EdgeInsets.only(left: 0,),

              //color: Colors.white,
              child:Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(2, 0),
                    child: IconButton
                      (icon: Icon(Icons.check_circle,
                      color: Colors.amberAccent,
                      size:35,
                    ),

                    ),),
                  Align(
                    alignment: Alignment(-0.4, 0.5),

                    child: Text("0x"),

                  ),


                ],

              ),

            ),
            ),
          ],


          backgroundColor: Color(0xFF4840B1),
          elevation: 6,
        ),
        drawer: MyDrawer(score,name,img),
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

          child: ListView(
            children: <Widget>[

              called(unname,score,name,img),
            ],




          ),




    ),
    );












  }
}

// list of lessons s= the name of lesson
// it will create list of one item called mulpable times

class Listitem extends StatelessWidget {
  Listitem({
    @required this.unname,
    @required this.unless,
    @required this.s,
    @required this.h,
    this.score,
    this.name,
    this.img


  }) ;

  final int unname;
  final int unless;
  final String s;
  final int h;
  int score;
  String name , img ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:Container(
       // margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(25),
        //color: Colors.blueAccent,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text('$unname - $unless    $s',
          style: TextStyle(

            fontSize: 25,
            color: Colors.white,

          ),

          ),
        ),

      ),
      onTap:(){
        if(s=='Unit 1 Exam'){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return unit_exam(s);
          }));

        }
          else{Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Unitpages(o: s,un: unname,le: unless,h: h,score: score,name: name,img: img,);
        }));}

      },
    );
  }
}


// will called all items
class called extends StatelessWidget {

  final int unit ;
  int score;
  String name ,img;
  called(this.unit,this.score,this.img,this.name);



  @override
  Widget build(BuildContext context) {
    if (unit == 1){
      return Column(
        children: [
          Listitem(unname:  unit, unless: 1,s:'My Famiy',h: 3,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname:  unit, unless: 2,s:'Jops',h: 2,),
          Divider(color: Colors.white, thickness: 3,),



          Listitem(unname: unit, unless: 3,s:'Where do they work',h: 2,),
          Divider(color: Colors.white, thickness: 3,),



          Listitem(unname: unit, unless:4,s:'Our daily routine',h:1 ,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname: unit, unless: 5,s:'My Favorite jop ',h: 1,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 6,s:'Tow familes',h: 2,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 7,s:'check my understanding',h: 1,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname: unit, unless: 8,s:'When I am grow up',h: 2,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 9,s:'Unit 1 Exam',h: 1,),

        ],
      );

    }

    if (unit == 2){
      return Column(
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Listitem(unname:  unit, unless: 1,s:'It\'s made of ...',h: 2,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname:  unit, unless: 2,s:'At the mall',h: 1,),
          Divider(color: Colors.white, thickness: 3,),



          Listitem(unname: unit, unless: 3,s:'Can I help you?',h: 2,),
          Divider(color: Colors.white, thickness: 3,),



          Listitem(unname: unit, unless:4,s:'Opposites',h:1 ,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname: unit, unless: 5,s:'Materials ',h: 1,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 6,s:'My MAgazine A blog',h: 2,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 7,s:'check my understanding',h: 1,),
          Divider(color: Colors.white, thickness: 3,),


          Listitem(unname: unit, unless: 8,s:'Let’s sing',h: 2,),
          Divider(color: Colors.white, thickness: 3,),

          Listitem(unname: unit, unless: 9,s:'Unit 2 Exam',h: 1,),

        ],
      );

    }




  }
}
