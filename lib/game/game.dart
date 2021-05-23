import 'package:flutter/material.dart';

import 'Lists.dart';


class MyApp2 extends StatelessWidget {
  int u,l;
  MyApp2(this.u,this.l);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Matching Game",
      home: HomePage(u,l),

    );
  }
}

class HomePage extends StatefulWidget {
  int u,l;
  HomePage(this.u,this.l);
  @override
  _HomePageState createState() => _HomePageState(u,l);
}


class _HomePageState extends State<HomePage> {
  int u,l;
  _HomePageState(this.u,this.l);


  List<ItemModel> items;
  List<ItemModel>items2;

  int score;
  bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame(){
    gameOver = false;
    score=0;
    if(u==1 && l==1) items=itemU1L1;
    if(u==1 && l==2) items=itemU1L2;
    if(u==1 && l==3) items=itemU1L3;
    if(u==1 && l==4) items=itemU1L4;
    if(u==1 && l==5) items=itemU1L5;
    if(u==1 && l==6) items=itemU1L6;
    if(u==1 && l==7) items=itemU1L7;
    if(u==1 && l==8) items=itemU1L8;
    if(u==2 && l==1) items=itemU2L1;
    if(u==2 && l==2) items=itemU2L2;

    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }


  @override
  Widget build(BuildContext context) {
    if(items.length == 0)
      gameOver = true;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Matching Game'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Score: "),
                  TextSpan(text: "$score", style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
                ]
            )
            ),
            if(!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging:ImageIcon(AssetImage(item.path),size: 50.0,color: Colors.grey,),
                            feedback:  Image(image:AssetImage(item.path,),),
                            child: Image(image:AssetImage(item.path,),),
                          ),
                        );


                      }).toList()
                  ),
                  Spacer(

                  ),
                  Column(
                      children: items2.map((item){
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem){
                            if(item.value== receivedItem.value){
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                                score+=10;
                                item.accepting =false;
                              });

                            }else{
                              setState(() {
                                score-=5;
                                item.accepting =false;

                              });
                            }
                          },
                          onLeave: (receivedItem){
                            setState(() {
                              item.accepting=false;
                            });
                          },
                          onWillAccept: (receivedItem){
                            setState(() {
                              item.accepting=true;
                            });
                            return true;
                          },
                          builder: (context, acceptedItems,rejectedItem) => Container(

                            color: item.accepting? Colors.red:Colors.teal,
                            height: 49,
                            width: 120,
                            alignment: Alignment.center,

                            margin: const EdgeInsets.all(11.0),
                            child: Text(item.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                fontSize: 18.0),),
                          ),


                        );

                      }).toList()

                  ),
                ],
              ),
            if(gameOver)
              Column(
                children: [
                  Container(height:200,width: 200,child: Image(image: AssetImage('assets/Hands.png',),fit: BoxFit.fill,)),
                  Text("Good Job !", style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),),
                ],
              ),
            if(gameOver)
              Center(
                child: InkWell(
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.pink,
                    child: Text("Back"),
                    onPressed: ()
                    {
                      initGame();
                      setState(() {

                      });
                    },
                  ),
                  onTap: (){},
                ),
              )

          ],
        ),

      ),
    );
  }
}

class ItemModel {
  final String name;
  final String value;
  String path;
  bool accepting;








  ItemModel({this.name, this.value, this.path, this.accepting= false});}