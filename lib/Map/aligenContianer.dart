import 'package:flutter/material.dart';
class AligenContainer extends StatelessWidget {

  final double alignmentvertical;
  final double contianerSize;
  AligenContainer({
    @required this.alignmentvertical,
    @required this.contianerSize
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(alignmentvertical, 0.00),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 5
        ),
        width: contianerSize,
        height: contianerSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red
        ),
      ),
    );
  }
}
