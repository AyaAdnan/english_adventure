import 'package:flutter/material.dart';






class MyApBar extends StatefulWidget {


  final String Title ;
  final String Score ;

  MyApBar ({
    @required this.Title,
    @required this.Score,

  });




  @override
  _ApBarState createState() => _ApBarState(Title: Title,Score: Score);
}



class _ApBarState extends State<MyApBar> {

  final String Title ;
  final String Score ;

  _ApBarState ({
    @required this.Title,
    @required this.Score,

  });

  @override
  Widget build(BuildContext context) {
    return AppBar(



      title: Text(Title,
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
                  (icon: Icon(Icons.flag,
                  color: Color(0xFFF99E2B),
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

    );
  }
}
