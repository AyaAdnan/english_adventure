import 'package:english_adventure/Map/units.dart';
import 'package:flutter/material.dart';
import 'lockicon.dart';



class Images extends StatelessWidget {



  final String name;
  final double platz;
  final bool lockicon;
  final double imageSize;

  bool lockicon2 = true;

  Images({
    @required this.name,
    @required this.platz,
    @required this.lockicon,
    @required this.imageSize
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(platz, 0.00),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              if (this.name == 'one') {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Units(1);
                }));
              }
              else{
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Units(2);
                }));
              }

            },

            child: Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/number/$name.png')
                )
              ),
              child: lockicon == true ? LockIcon() : null
            ),
          ),
        ],
      ),
    );
  }
}




