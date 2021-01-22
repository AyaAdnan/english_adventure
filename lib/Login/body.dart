import 'package:english_adventure/intro/Splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'background.dart';
import 'rounded_button.dart';
import 'rounded_input_field.dart';



class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body :Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
               Stack(

                 children:[
                   Positioned (

                     width: 180,
                     height: 135,
                     left: 10,
                     top: 43,



                     child :CircleAvatar(
                     //child: Image.asset('lib/assets/boy.jpg',),
                     // backgroundColor: Colors.white70,

                     child: IconButton(icon:Icon(Icons.camera_alt) ,),
                      radius: 70,

                   ),),


                   Container(
                   height: 200,
                     width: 200,
                     child: Image.asset('lib/assets/head.png',)
                 ),
                 ]
               ),


              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Enter Your Name Here",
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "LOGIN",
                press: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Load();
                          },
                        ),
                      );
                }

              ),
              SizedBox(height: size.height * 0.03),
              // AlreadyHaveAnAccountCheck(
              //   press: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return SignUpScreen();
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
