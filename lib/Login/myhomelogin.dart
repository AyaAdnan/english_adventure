import 'dart:convert';
import 'dart:io';
import 'package:english_adventure/Drawer/globals.dart';
import 'package:english_adventure/intro/Splash.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'DB_helper.dart';
import 'rounded_button.dart';
import 'rounded_input_field.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int score = 0;
  File _image;
  final DbStudentManager dbmanager = new DbStudentManager();
  String _pathController;

  final _formKey = new GlobalKey<FormState>();
  Student student;
  List<Student> studlist;
  int updateIndex;
  var nameController = new TextEditingController();
   var  imageString;

  Future getGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    List<int> imageBytes = image.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    imageChanged.add(base64Image);

    setState(() {
      _image=image;
      imageString = base64Image;
    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //Background Color
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

        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10,),
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(height: size.height * 0.03),
              Stack(

                  children: [
                    Positioned(

                      width: 180,
                      height: 135,
                      left: 10,
                      top: 43,

                      child: Center(
                        child: InkWell(
                          //onTap:(){ getGallery();},
                          child: Container(

                            child: _image != null ? Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: FileImage(_image),
                                        fit: BoxFit.fill
                                    ))
                            ) : Container(
                              child: FlatButton(child: Icon(
                                Icons.camera_alt, size: 50,
                                color: Color(0xFFF1E6FF),), onPressed: () {
                                getGallery();
                              },),
                            ),
                          ),
                        ),

                      ),


                    ),


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
                name: nameController,
              ),
              SizedBox(height: size.height * 0.001),
              RoundedButton(
                  text: "Select Picture",
                  press: () {
                    getGallery();
                  }

              ),
              // SizedBox(height: size.height * 0.03),

              SizedBox(height: 80,),
              RoundedButton(text: 'Login', press: () {
                _submitStudent(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Load(score, nameController.text, imageString);
                }));
              },

                color: Color(0xFFF99E2B),),

            ],
          ),
        ),
      ),
    );
  }

  void _submitStudent(BuildContext context) {
    //if(_formKey.currentState.validate()){
    if (student == null) {
      Student st = new Student(
          name: nameController.text, path: _pathController, score: 0);
      dbmanager.insertStudent(st).then((id) =>
      {
        nameController.clear(),
        // _pathController.clear(),
        print('Student Added to Db $id')
      });
    } else {
      student.name = nameController.text;
      student.path = _pathController;
      student.score = 0;

      dbmanager.updateStudent(student).then((id) =>
      {
        setState(() {
          studlist[updateIndex].name = nameController.text;
          studlist[updateIndex].path = _pathController;
          studlist[updateIndex].score = 0;
        }),
        nameController.clear(),
        // _pathController.clear(),
        student = null
      });
    }
  }

  // void call() {
  //   Future<dynamic> std1 = dbmanager.getStudentList();
  //   List std = std1 as List;
  //
  //
  // }

}






















