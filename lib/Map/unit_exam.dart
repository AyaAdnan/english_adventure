import 'package:english_adventure/Login/constants.dart';
import 'package:english_adventure/Login/text_field_container.dart';
import 'package:flutter/material.dart';
import 'audio.dart';
import 'score.dart';



class unit_exam extends StatefulWidget {
  String name;
  unit_exam(this.name);
  @override
  unit_examState createState() => unit_examState(name);
}

class unit_examState extends State<unit_exam> {
  String name;
  unit_examState(this.name);
  var nameController = new TextEditingController();
  var nameController2 = new TextEditingController();
  var nameController3 = new TextEditingController();
  var nameController4 = new TextEditingController();
  var nameController5 = new TextEditingController();
  int X=0;
  int Score=0;
  String pass;

  int getscore(){
    if( nameController.text == 'الجد') Score++;
    if( nameController2.text == 'Teacher') Score++;
    if( nameController3.text == 'How many') Score++;
    if( nameController4.text == 'Fork') Score++;
    if( nameController5.text == 'Wants') Score++;
    setState(() {
      X=Score;
    });
    //print(X);
    return(X);

  }

  String getpassing(X){

    if(X == 0) pass='Fail !' ;
    if(X == 1) pass='Fail !' ;
    if(X == 2) pass='Fail !' ;
    if(X == 3) pass='GOOD !' ;
    if(X == 4) pass='Very Good!' ;
    if(X == 5) pass='Excellent!' ;

    //print(X);
    return(pass);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4840B1),
        title: Text(name),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Color(0xFF4840B1),
              Color(0xFFb44BC4),
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Question("What is the meaning of Grandmother ?", nameController),
            Divider(thickness: 2,color: Colors.white,),
            Imagecall("What is his job ?", nameController2,),
            Divider(thickness: 2,color: Colors.white,),
            Quistion_ans("----- Sisters do you have ?",nameController3,"(How much , How many , How old , why"),
            Divider(thickness: 2,color: Colors.white,),
            voicecall('Write what you here', nameController4,'Fork'),
            Divider(thickness: 2,color: Colors.white,),
            Quistion_ans("She ------ to be A Doctor",nameController5,"(wants , Wanting , want , wanted"),
            Divider(thickness: 2,color: Colors.white,),


            InkWell(
              child: Container(

                margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 15),
                padding: EdgeInsets.all(20),
                width: 130,
                height: 60,

                decoration: BoxDecoration(
                  color:Color(0xFFF99E2B),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 1.0,
                      offset: Offset(5, 5),
                      spreadRadius: 1.0,
                    ),
                  ],




                ),
                child: Center(
                  //heightFactor:0.4 ,
                  child: Text("Done",
                    style: TextStyle(
                      letterSpacing: 3,
                      color: Colors.white,
                      fontSize:20,
                    ),
                  ),
                ),
              ),
              onTap: (){
              X= getscore();
              pass=getpassing(X);
              print(X);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scorepage(score: X,passing: pass,);
              }));


                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Scorepage(X)));
              },
            ),




            //
            // FlatButton(onPressed: (){
            //  if(nameController.text=="الجد"){
            //    setState(() {
            //      Score+=Score;
            //    });
            //  }
            //}, color: Colors.purple,)
          ],
        ),
      ),
    );
  }
}


class Question extends StatelessWidget {
  var nameController = new TextEditingController();
  String Q;
  Question(this.Q,this.nameController);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6,right: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Text(Q,style: TextStyle(color: Colors.white,fontSize: 29,),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          RoundedInputField(
            name: nameController,
            hintText: "Answer Here",
          ),

        ],

      ),
    );
  }
}



class Imagecall extends StatelessWidget {
  var nameController2 = new TextEditingController();
String Q;
Imagecall(this.Q,this.nameController2);
  @override
  Widget build(BuildContext context) {
    return


 Container(
        margin: EdgeInsets.only(left: 6,right: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text(Q,style: TextStyle(color: Colors.white,fontSize: 29,),),
            SizedBox(height: 5,),
            Container(width: 84,height:84,child: Image(image: AssetImage('assets/Teacher.png',),fit: BoxFit.fill,)),
           // Image(image: AssetImage('graphics/background.png')),
           SizedBox(height: 15,),

            RoundedInputField(
              name: nameController2,
              hintText: "Answer Here",
            ),

          ],

        ),
      );
    }
}
















class RoundedInputField extends StatelessWidget {
  final String hintText;
  final name;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
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

          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}


class Quistion_ans extends StatelessWidget {
  var nameController3 = new TextEditingController();
  String Q;
  String A;
  var nameCont = new TextEditingController();
  Quistion_ans(this.Q,this.nameCont,this.A);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6,right: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Text(Q,style: TextStyle(color: Colors.white,fontSize: 29,),),
          Text(A,style: TextStyle(color: Colors.amber,fontSize: 29,),),

          //SizedBox(height: 5,),

          SizedBox(height: 15,),

          RoundedInputField(
            name: nameCont,
            hintText: "Answer Here",
          ),

        ],

      ),
    );
  }
}


class voicecall extends StatelessWidget {
  var nameController4 = new TextEditingController();
  String v;
  String Q;
  voicecall(this.Q,this.nameController4,this.v);
  @override
  Widget build(BuildContext context) {
    return


      Container(
        margin: EdgeInsets.only(left: 6,right: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text(Q,style: TextStyle(color: Colors.white,fontSize: 29,),),
            SizedBox(height: 5,),
            LocalAudio(v),
            // Image(image: AssetImage('graphics/background.png')),
            SizedBox(height: 15,),

            RoundedInputField(
              name: nameController4,
              hintText: "Answer Here",
            ),

          ],

        ),
      );
  }
}
