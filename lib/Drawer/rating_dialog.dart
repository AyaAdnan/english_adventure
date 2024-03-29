import 'package:flutter/material.dart';

class RatingDialog extends StatefulWidget {
  @override
  _RatingDialogState createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _stars = 0;

  Widget _buildStar(int starCount) {
    return InkWell(
      child: Icon(
        Icons.star,
        // size: 30.0,
        color: _stars >= starCount ? Colors.orange : Colors.grey,
      ),
      onTap: () {
        setState(() {
          _stars = starCount;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
      title: Center(child: Text('Rate this App !',style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600,color: Colors.blue),),),
      //backgroundColor: Colors.purple,
      content: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildStar(1),
            _buildStar(2),
            _buildStar(3),
            _buildStar(4),
            _buildStar(5),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('CANCEL'),
          onPressed: Navigator.of(context).pop,
        ),
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop(_stars);
          },
        )
      ],
    );
  }
}