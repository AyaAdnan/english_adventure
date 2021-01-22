import 'package:english_adventure/Login/body.dart';
import 'package:flutter/material.dart';
import 'Splash.dart';



class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(

          child: First(),
          
        ),
      ),
      routes: {
        'Load': (context){
          return Body();
        }
        ,

      }
    )

    ;
  }
  
}



class First extends StatefulWidget{
  @override
  _First createState()=> _First();
  }



class _First extends State<First>{
  @override
  Widget build(BuildContext context) {

    return Container(
         //Background Color
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xFF4840B1),
                Color(0xFFb44BC4),
              ]
          ),
        ),


      child: Column(
        //add space between the element
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // the element of page


        children: <Widget>[

          // top Image
          Container(

              child: Center(
                child: Image.asset('lib/assets/intro.png'),
              ),

          ),


          //Middle Text

                 // padding: EdgeInsets.only(bottom: 60),
                 Center(
                 //  heightFactor: 37,
                     child :Text('English Adventure',

                    style: TextStyle(

                        color: Colors.white,
                         fontSize:20,
                         ),)
                 ),
                SizedBox(height: 18,),
                Container(
                  padding: EdgeInsets.only(
                    top: 25
                  ),
                  height: 150,

                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  margin: EdgeInsets.only(
                    left: 44,
                    right: 44,

                  ),
                child :Text('اهلا و سهلا بك معنا في رحلة فضائية ايها البطل , كن مستعدا لخوض هذه المغامرة للتعرف على مادة اللغة الانجليزية للصف السادس الابتدائي ',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                       color: Colors.black54,
                       fontSize:18,
                       ),
                ),
                ),







          //Botton
         InkWell(
        child: Container(
           padding:EdgeInsets.only(top:41) ,
           child:Container(

              margin: EdgeInsets.all(35),
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
                )
              ],
            ),
           child: Center(
            //heightFactor:0.4 ,
              child: Text("هيا نبدأ",
             style: TextStyle(
                color: Colors.white,
                fontSize:17,
              ),
             ),
            ),
          ),

          ),
           onTap: (){
          Navigator.of(context).pushNamed('Load');

           },
         ),












        ],
      ),
    );
  }

}







