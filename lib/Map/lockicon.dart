import 'package:flutter/material.dart';
class LockIcon extends StatelessWidget {
  const LockIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('lib/assets/lock/lock.png',)
        ),
        shape: BoxShape.circle,
        color: Colors.white38
        ),
      ),
    );
  }
}

