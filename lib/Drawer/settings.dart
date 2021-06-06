import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:english_adventure/Login/constants.dart';
import 'package:english_adventure/Login/text_field_container.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  String name , img;
  SettingsScreen(this.img,this.name);

  @override
  _SettingsState createState() => _SettingsState(img,name);
}

class _SettingsState extends State<SettingsScreen> {
  String name , img;
  _SettingsState(this.img,this.name);
  var nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xFF4840B1),
        title: Text('Settings'),
        centerTitle: true,
      ),
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
        child: ListView(
            children: [
              SizedBox(height: 13,),
              Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: img != null && img.isNotEmpty
                              ? Image.memory(base64Decode(img)).image
                              : null))),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,),
                child: RoundedInputField(
                  hintText: name,
                  name: nameController,
                  onChanged: (value) {
                    setState(() {
                      name = nameController.text;
                    });
                  },
             icon: Icons.app_registration,
                ),
              ), Divider(
                thickness: 2,
                color: Colors.white,
              ),
             SizedBox(height: 8,),

              Container(
                margin: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 15),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Dark Mode',style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(width: 80,),
                    FlutterSwitch(
                      height: 30.0,
                      width: 50.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 15.0,
                      activeColor: Colors.amber,

                      value: false,
                      onToggle: (value) {
                        setState(() {
                          var isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Notification',style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(width: 71,),
                    FlutterSwitch(
                      height: 30.0,
                      width: 50.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 15.0,
                      activeColor: Colors.amber,

                      value: false,
                      onToggle: (value) {
                        setState(() {
                          var isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Language',style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(width: 71,),

                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('About',style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(width: 71,),

                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Log Out',style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(width: 71,),

                  ],
                ),
              ),


            ],
          ),

      ),
    );
  }
}
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final name;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.name,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: name,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}