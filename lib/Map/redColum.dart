import 'package:flutter/material.dart';
import 'aligenContianer.dart';
class RedColumn extends StatelessWidget {
  final double top;
  final double top2;
  final double center;
  final double bottom2;
  final double bottom;
  final double size;

  const RedColumn({
    @required this.top,
    @required this.top2,
    @required this.center,
    @required this.bottom2,
    @required this.bottom,
    @required this.size
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AligenContainer(
          alignmentvertical: top,
          contianerSize: size,
        ),
        AligenContainer(
          alignmentvertical: top2,
          contianerSize: size,
        ),
        AligenContainer(
          alignmentvertical: center,
          contianerSize: size,
        ),
        AligenContainer(
          alignmentvertical: bottom2,
          contianerSize: size,
        ),
        AligenContainer(
          alignmentvertical: bottom,
          contianerSize: size,
        ),
      ],
    );
  }
}
