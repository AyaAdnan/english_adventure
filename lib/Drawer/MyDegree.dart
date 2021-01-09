import 'package:flutter/material.dart';



class Mydegree extends StatefulWidget {
  @override
  _MydegreeState createState() => _MydegreeState();
}

class _MydegreeState extends State<Mydegree>  {

  List<Degree> degreelist=[

    Degree(unname: 'Abc',deg: '0'),
    Degree(unname: 'Unit 1',deg:'0'),
    Degree(unname: 'Unit 2',deg: '0'),
    Degree(unname: 'Unit 3',deg: '0'),
    Degree(unname: 'Unit 4',deg:'0'),
    Degree(unname: 'Unit 5',deg: '0'),
    Degree(unname: 'Unit 6',deg:'0'),
    Degree(unname: 'Unit 7',deg:'0'),
    Degree(unname: 'Unit 8',deg:'0'),
    Degree(unname: 'Final Exam',deg:'0'),





  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF4840B1),
        title: Text('My Degree'),
        centerTitle: true,
      ),




      body:ListView(
        children:degreelist.map((degreelist)=>Listv(s :degreelist)).toList(),

      ) ,
    );
  }
}













class Degree{



  String unname ;
  String deg ;


  Degree({this.unname,this.deg});


}

class Listv extends StatelessWidget {
  final Degree s;

  Listv({this.s});

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(22),
      child: Center(
        child: Row(

          children: <Widget>[
            Text(s.unname,
            style: TextStyle(
              fontSize: 25,
              color: Colors.pink
            ),
            ),
            Text('         :       ',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink
              ),
            ),
            Text(s.deg,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink
              ),
            ),

          ],

        ),
      ),
    );
  }
}





