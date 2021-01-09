import 'package:flutter/material.dart';


class Mynote extends StatefulWidget {
  @override
  _MynoteState createState() => _MynoteState();
}

class _MynoteState extends State<Mynote> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF4840B1),
        title: Text('My Note'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(

          child: Icon(Icons.add),
          backgroundColor:Color(0xFF4840B1) ,
          onPressed:(){})
    );
  }
}
