import 'package:english_adventure/Drawer/Drawer.dart';
import 'package:english_adventure/game/game.dart';
import 'package:english_adventure/quiz/start.dart';
import 'package:english_adventure/word_page/mainofwords.dart';
import '../audio/audio.dart';
import '../note/screens/note_detail.dart';
import '../note/modal_class/notes.dart';
import 'package:flutter/material.dart';







// called the paper of unit , h for how many picture in the unit paper

class Unitpages extends StatefulWidget {

  final String o;
  final int un;
  final int le;
  final int h;
  int score;
  String name , img ;

  Unitpages({this.o,this.un,this.le,this.h,this.score,this.name,this.img});


  @override
  _UnitpagesState createState() => _UnitpagesState(w:o ,u:un,l: le,h: h,score: score,name: name,img: img);
}





class _UnitpagesState extends State<Unitpages>  {

  final String w;
  final int u;
  final int l;
  final int h;
  int score;
  String name , img ;

  _UnitpagesState({this.w,this.u,this.l,this.h,this.score,this.name,this.img});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$u - $l  $w'),


        centerTitle: true,

        backgroundColor: Color(0xFF4840B1),
        elevation: 6,
      ),
      //drawer: MyDrawer(score,name,img),
      body:Container(
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




        child:ListView(
        children: <Widget>[

          called(un: u,le: l,o:w,h: h,),




          Row(
            children: <Widget>[
              Iconns(u: u,l: l,w: w,i:"Words" ),
              SizedBox(width: 10,),


              Iconns(u: u,l: l,w: w,i:"Note" ,),
              SizedBox(width: 10,),


              Iconns(u: u,l: l,w: w,i:"Games" ,),
              SizedBox(width: 10,),


              Iconns(u: u,l: l,w: w,i:"Quiz" ,),
              SizedBox(width: 10,),



            ],
          ),


        InkWell(
          child: Container(

            margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 15),
            padding: EdgeInsets.all(20),
            width: 130,
            height: 60,

            decoration: BoxDecoration(
                color:Color(0xFFF99E2B),
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
              child: Text("Done",
                style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontSize:20,
                ),
              ),
            ),
          ),
          onTap: ()=>Navigator.pop(context),
        ),








        ],
      ), )
    );
  }
}

class Iconns extends StatelessWidget {
  var u;
  var l;
  var w;

   Iconns({
    this.u,
    this.l,
    this.w,
    Key key,
    @required this.i,

  }) : super(key: key);

  final String i;



  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10,bottom: 10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.circular(70),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 1.0,
                offset: Offset(5, 5),
                spreadRadius: 1.0,
              ),
            ],

          ),
          child: Iconbuilder(u: u,l: l,w: w,x: i,),
        ),
        Text(i,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          )
          ,),

      ],





    );
  }
}

class Iconbuilder extends StatelessWidget {
  var u;
  var l;
  var w;

   Iconbuilder({
    this.u,
    this.l,
    this.w,
    @required this.x,

    Key key,
  }) : super(key: key);


  final String x ;

  @override
  Widget build(BuildContext context) {
    if(x=='Words'){
      return IconButton(
        icon: Icon(Icons.border_color,
        size: 40,
          color: Colors.black54,

        ),
        onPressed:() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WordsPage(u,l)));
        },

      );
    }
    if(x=='Note'){
      return IconButton(icon: Icon(Icons.note,
          size: 40,
          color: Colors.black54,),
          onPressed:() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NoteDetail(Note('$u - $l  $w', '', 3, 0), 'Add Note')));
          },


      );


    }

    if(x=='Games'){
      return IconButton(icon:Icon(Icons.games,
        size: 40,
        color: Colors.black54,

      ), onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return MyApp2(u,l);
        }));
      }) ;
    }
    return IconButton(
      icon: Icon(Icons.class_
      ,
        size: 40,
        color: Colors.black54,

      ),
      onPressed: (){

        Navigator.push(context,MaterialPageRoute(builder: (context){
          return quizcall(un: u,le: l,);
        }));

      },
    );

  }
}

class Imagec extends StatelessWidget {

  const Imagec({
    Key key,
    @required this.u,
    @required this.l,
    @required this.c,
  }) : super(key: key);

  final int u;
  final int l;
  final String c;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child:Image(
            image:  AssetImage('lib/assets/un1/l$u-$l-$c.png'),
        ),),



        LocalAudio('L$u-$l-$c'),






    //     Container(
    //
    //     margin: EdgeInsets.only(top: 15,left: 40,right: 40,bottom: 15),
    //     padding: EdgeInsets.all(20),
    //     width: 270,
    //     height: 60,
    //
    //     decoration: BoxDecoration(
    //     color: Colors.pink[100],
    //     borderRadius: BorderRadius.circular(50),
    //     boxShadow: [
    //     BoxShadow(
    //     color: Colors.black38,
    //     blurRadius: 1.0,
    //     offset: Offset(5, 5),
    //     spreadRadius: 1.0,
    //     ),
    //     ],
    //
    //
    // ),
    // child: Center(
    // //heightFactor:0.4 ,
    // child: Text("Sound",
    // style: TextStyle(
    // letterSpacing: 2,
    // color: Colors.black54,
    // fontSize:22,
    // ),
    // ),
    // ),
    // ),



      ],
    );
  }
}

//just called the image by the write n ;
class called extends StatelessWidget {

  final String o;
  final int un;
  final int le;
  final int h;

  called({this.o, this.un, this.le, this.h});

  @override
  Widget build(BuildContext context) {
    if (h == 3) {
      return Column(
        children: [
          Imagec(u: un, l: le, c: 'a'),
          Imagec(u: un, l: le, c: 'b'),
          Imagec(u: un, l: le, c: 'c'),
        ],
      );
    }


    if (h == 2) {
      return Column(
        children: [
          Imagec(u: un, l: le, c: 'a'),
          Imagec(u: un, l: le, c: 'b'),

        ],
      );
    }


    if (h == 1) {
      return Column(
        children: [
          Imagec(u: un, l: le, c: 'a'),
        ],
      );
    }
  }
}


class quizcall extends StatelessWidget {

  final int un;
  final int le;
  quizcall({this.un, this.le});


  @override
  Widget build(BuildContext context) {
    if(un==1 && le ==1){
      return MyApp(0,5);
    }
    if(un==1 && le ==2){
      return MyApp(5,10);
    }


    if(un==1 && le ==3){
      return MyApp(10,15);
    }
    if(un==1 && le ==4){
      return MyApp(15,20);
    }

    if(un==1 && le ==5){
      return MyApp(20,25);
    }
    if(un==1 && le ==6){
      return MyApp(25,30);
    }

    if(un==1 && le ==7){
      return MyApp(30,35);
    }
    if(un==1 && le ==8){
      return MyApp(35,40);
    }


    if(un==2 && le ==1){
      return MyApp(40,45);
    }
    if(un==2 && le ==2){
      return MyApp(45,50);
    }



  }
}
