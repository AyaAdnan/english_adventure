import 'package:flutter/material.dart';


import 'audioplayer.dart';
import 'check_lesson.dart';

class Words_Card extends StatelessWidget {
  final String Word;
  final String trans;
  Words_Card(this.Word, this.trans);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7.5),
      child: Container(
        padding: EdgeInsets.only(top: 2.5,bottom: 2.5,right: 4,left: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$Word',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$trans',
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
              ],
            ),
            LocalAudio(Word),
          ],
        ),
      ),
    );
  }
}
