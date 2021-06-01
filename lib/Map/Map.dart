import 'package:english_adventure/Drawer/Drawer.dart';
import 'package:english_adventure/Map/redColum.dart';
import 'package:english_adventure/Map/respansv.dart';
import 'package:flutter/material.dart';

import 'img.dart';







class Map extends StatefulWidget {
  int score;
  String name , img ;
  Map(this.score,this.name,this.img);



  @override
  _MapState createState() => _MapState(score,name,img);
}

class _MapState extends State<Map> {
  int score;
  String name , img ;
  _MapState(this.score,this.name,this.img);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double sizeWidth = MediaQuery.of(context).size.width / 4.50;

    Respansv respansv = Respansv(size1: screenWidth, size2: sizeWidth);

    //int flag =0;
    return
      Scaffold(

      appBar: AppBar(
        title: Text('Space Map',
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
        child : ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(15),
                child:  Column(
                  children: <Widget>[
                    Images(
                      name: 'one',
                      platz: 0.00,
                      lockicon: false,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top: - 0.19,
                      top2: - 0.28,
                      center: - 0.35,
                      bottom2: - 0.40,
                      bottom: - 0.42,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'two',
                      platz: -0.50,
                      lockicon:false,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top: - 0.20,
                      top2: - 0.04,
                      center:  0.12,
                      bottom2:  0.25,
                      bottom:  0.37,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'three',
                      platz: 0.50,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top:  0.20 ,
                      top2:  0.06,
                      center: - 0.10,
                      bottom2: - 0.23,
                      bottom: - 0.33,
                      size: respansv.getDeviceType() / 6,

                    ),
                    Images(
                      name: 'four',
                      platz: -0.45,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top: - 0.12,
                      top2:  0.10,
                      center:  0.25,
                      bottom2:  0.40,
                      bottom:  0.50,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'five',
                      platz: 0.80,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top: 0.40 ,
                      top2: 0.26,
                      center: 0.13,
                      bottom2: 0.02,
                      bottom: - 0.12,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'six',
                      platz: -0.40,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top: - 0.10 ,
                      top2:  0.06,
                      center:  0.23,
                      bottom2:  0.35,
                      bottom:  0.45,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'seven',
                      platz: 0.80,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),
                    RedColumn(
                      top:  0.50 ,
                      top2:  0.30,
                      center:  0.07,
                      bottom2: - 0.15,
                      bottom: - 0.30,
                      size: respansv.getDeviceType() / 6,
                    ),
                    Images(
                      name: 'eight',
                      platz: -0.50,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),

                    RedColumn(
                      top:  -0.27 ,
                      top2:  -0.17,
                      center:  0.06,
                      bottom2:  0.27,
                      bottom: 0.47,
                      size: respansv.getDeviceType() / 6,
                    ),


                    Images(
                      name: 'eight',
                      platz: 0.82,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),


                    RedColumn(
                      top:  0.70 ,
                      top2:  0.49,
                      center:  0.30,
                      bottom2: 0.02,
                      bottom: -0.20,
                      size: respansv.getDeviceType() / 6,
                    ),

                    Images(
                      name: 'eight',
                      platz: -0.20,
                      lockicon: true,
                      imageSize: respansv.getDeviceType(),
                      score: score,
                      name2: name,
                      img: img,
                    ),













                  ],
                )
            ),














           ],
    ),
      ),
    );

  }


  }

