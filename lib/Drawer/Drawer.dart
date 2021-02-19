import 'package:english_adventure/note/callednote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_adventure/Map/Map.dart';
import 'MyDegree.dart';








class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(



        child: ListView(

          children: <Widget>[
            DrawerHeader(
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
              
              child: Stack(
                children: <Widget>[

                  Align(
                    alignment: Alignment(-0.7,0.6),
                    child: CircleAvatar(
                      //child: Image.asset('lib/assets/boy.jpg',),
                    // backgroundColor: Colors.white70,
                      backgroundImage: AssetImage('lib/assets/face.jpg'),
                      radius:52,
                    ),

                  ),

                  Image.asset('lib/assets/head.png',),
                  Align(
                    alignment: Alignment.centerRight+Alignment(-0.6, 0),
                    child: Text("Ahmad",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    ),
                  ),



                  Align(
                    alignment: Alignment.centerRight+Alignment(0, 0.4),
                    child: Text("Ahmad123@gmail.com",
                      style: TextStyle(
                        color: Colors.white70,
                       // fontSize: 20.0,
                      ),
                    ),
                  )




                ],
              ),

              
            ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.end,
    children: [
         /*  ListTile(

             title: Text('الصفحة الرئيسية',textAlign: TextAlign.right,),
              leading:Align(
               alignment: Alignment(1, 2),
                child :Icon(Icons.home,),),

            ), */

      Padding(
        padding: EdgeInsets.only(left: 0),
        child:InkWell(
          onTap: (){

            Navigator.push(context,MaterialPageRoute(builder: (context){
            return Map();
          }));},



          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Color(0xFFb44BC4),
                icon: Icon(Icons.home,),
                onPressed: (){},
              ),
               Text('Home',style: TextStyle(color: Color(0xFFb44BC4),),),


    ]
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Colors.black54,
                icon: Icon(Icons.bookmark),
                onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Mydegree();
                  }));

                },
              ),
              Text('My Degree',style: TextStyle(color: Colors.black54)),


            ]
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Colors.black54,
                icon: Icon(Icons.note_add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Notecalled();
                  }));
                }

              ),
              Text('My Note',style: TextStyle(color: Colors.black54)),


            ]
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Colors.black54,
                icon: Icon(Icons.settings),
                onPressed: (){},
              ),
              Text('Settings',style: TextStyle(color: Colors.black54)),


            ]
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Colors.black54,
                icon: Icon(Icons.star_half),
                onPressed: (){},
              ),
              Text('Rate Us',style: TextStyle(color: Colors.black54)),


            ]
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              IconButton(color: Colors.black54,
                icon: Icon(Icons.phone),
                onPressed: (){},
              ),
              Text('Contact Us',style: TextStyle(color: Colors.black54)),


            ]
        ),
      ),
    ]
         )

          ],
          
        ),
        
      
      
      
      
      
     
    );
  }
}
