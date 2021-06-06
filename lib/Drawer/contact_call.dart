import 'package:flutter/material.dart';
import 'contactus.dart';



class Contact_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'English Adventure',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'English_Adventure@gmail.com',
          // textFont: 'Sail',
        ),
        //backgroundColor:  Color(0xFFb44BC4),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4840B1),
                Color(0xFFb44BC4),
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          height: double.infinity,
          child: ContactUs(
              cardColor: Colors.white,
              textColor: Colors.teal.shade900,
              logo: AssetImage('img/logo.png'),
              email: 'English_Adventure@gmail.com',
              companyName: 'English Adventure',
              companyColor: Colors.teal.shade100,
              phoneNumber: '+917818044311',
              website: 'https://English_Adventure.godaddysites.com',
              githubUserName: 'English_Adventure',
              linkedinURL: 'https://www.linkedin.com/in/English_Adventure520983199/',
              tagLine: ' ',
              taglineColor: Colors.teal.shade100,
              twitterHandle: 'English_Adventure',
              instagram: 'English_Adventure',
              facebookHandle: 'English_Adventure'
          ),
        ),

    );
  }
}
