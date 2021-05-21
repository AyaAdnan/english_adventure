import 'package:flutter/material.dart';
import 'constant.dart';
import 'word_card.dart';
import 'check_lesson.dart';



class WordsPage extends StatefulWidget {
  int u, l;
  WordsPage(this.u, this.l);
  @override
  _WordsPageState createState() => _WordsPageState(u, l);
 
}

class _WordsPageState extends State<WordsPage> {

  int u, l;
  _WordsPageState(this.u, this.l);
 // List < String > word ;
 //  List < String > trans ;
 // List word =check(u, l);


    @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Words'),
          centerTitle: true,
          backgroundColor: Color(0xFF4840B1),
        ),
        body: Container(
          // color: kPrimaryGradient,
          decoration: BoxDecoration(gradient: kPrimaryGradient),


          child:ListView(children:[ called_cards(u,l)]),
          // ListView.builder(
          //    // padding: const EdgeInsets.all(8),
          //     itemCount: 11,
          //
          //     itemBuilder: (BuildContext context, i) {
          //
          //       return Words_Card(word[i],trans[i]);
          //     }),
        ),
      ),
    );
  }
}




class called_cards extends StatelessWidget {
  final int u ;
  final int l ;

  called_cards(this.u,this.l);
  @override
  Widget build(BuildContext context) {


   if (u==1 && l==1){
   return Column(
     children: [
       Words_Card(word[0],trans[0]),
       Words_Card(word[1],trans[1]),
       Words_Card(word[2],trans[2]),
       Words_Card(word[3],trans[3]),
       Words_Card(word[4],trans[4]),
       Words_Card(word[5],trans[5]),
       Words_Card(word[6],trans[6]),
       Words_Card(word[7],trans[7]),
       Words_Card(word[8],trans[8]),
       Words_Card(word[9],trans[9]),
       Words_Card(word[10],trans[10]),

     ],
   );
   }


   if (u==1 && l==2){
     return Column(
       children: [
         Words_Card(word[11],trans[11]),
         Words_Card(word[12],trans[12]),
         Words_Card(word[13],trans[13]),
         Words_Card(word[14],trans[14]),
         Words_Card(word[15],trans[15]),
         Words_Card(word[16],trans[16]),
         Words_Card(word[17],trans[17]),
         Words_Card(word[18],trans[18]),
         Words_Card(word[19],trans[19]),
         Words_Card(word[20],trans[20]),
         Words_Card(word[21],trans[21]),

       ],
     );
   }

   if (u==1 && l==3){
     return Column(
       children: [
         Words_Card(word[22],trans[22]),
         Words_Card(word[23],trans[23]),
         Words_Card(word[24],trans[24]),
         Words_Card(word[25],trans[25]),
         Words_Card(word[26],trans[26]),
         Words_Card(word[27],trans[27]),
         Words_Card(word[28],trans[28]),
         Words_Card(word[29],trans[29]),
         Words_Card(word[30],trans[30]),
         Words_Card(word[31],trans[31]),
         Words_Card(word[32],trans[32]),


       ],
     );
   }



   if (u==1 && l==4){
     return Column(
       children: [
         Words_Card(word[33],trans[33]),
         Words_Card(word[34],trans[34]),
         Words_Card(word[35],trans[35]),
         Words_Card(word[36],trans[36]),
         Words_Card(word[37],trans[37]),
         Words_Card(word[38],trans[38]),


       ],
     );
   }

// 5
   if (u==1 && l==5){
     return Column(
       children: [

         Words_Card(word[39],trans[39]),
         Words_Card(word[40],trans[40]),
         Words_Card(word[41],trans[41]),
         Words_Card(word[42],trans[42]),
         Words_Card(word[43],trans[43]),
         Words_Card(word[44],trans[44]),
         Words_Card(word[45],trans[45]),
         Words_Card(word[46],trans[46]),



       ],
     );
   }


    if (u==1 && l==6){
      return Column(
        children: [
          Words_Card(word[47],trans[47]),
          Words_Card(word[48],trans[48]),
          Words_Card(word[49],trans[49]),
          Words_Card(word[50],trans[50]),
          Words_Card(word[51],trans[51]),
          Words_Card(word[52],trans[52]),
          Words_Card(word[53],trans[53]),
          Words_Card(word[54],trans[54]),
          Words_Card(word[55],trans[55]),
          Words_Card(word[56],trans[56]),
          Words_Card(word[57],trans[57]),
          Words_Card(word[58],trans[58]),
          Words_Card(word[59],trans[59]),



        ],
      );
    }


//7
    if (u==1 && l==7){
      return Column(
        children: [
          Words_Card(word[60],trans[60]),
          Words_Card(word[61],trans[61]),
          Words_Card(word[62],trans[62]),
          Words_Card(word[63],trans[63]),
          Words_Card(word[64],trans[64]),
          Words_Card(word[65],trans[65]),
          Words_Card(word[66],trans[66]),
          Words_Card(word[67],trans[67]),
          Words_Card(word[68],trans[68]),
          Words_Card(word[69],trans[69]),
          Words_Card(word[70],trans[70]),
          Words_Card(word[71],trans[71]),
          Words_Card(word[72],trans[72]),

        ],
      );
    }


    if (u==1 && l==8){
      return Column(
        children: [

          Words_Card(word[73],trans[73]),
          Words_Card(word[74],trans[74]),
          Words_Card(word[75],trans[75]),
          Words_Card(word[76],trans[76]),
          Words_Card(word[77],trans[77]),
          Words_Card(word[78],trans[78]),
          Words_Card(word[79],trans[79]),
          Words_Card(word[80],trans[80]),


        ],
      );
    }



    if (u==2 && l==1){
      return Column(
        children: [

          Words_Card(word[81],trans[81]),
          Words_Card(word[82],trans[82]),
          Words_Card(word[83],trans[83]),
          Words_Card(word[84],trans[84]),
          Words_Card(word[85],trans[85]),
          Words_Card(word[86],trans[86]),
          Words_Card(word[87],trans[87]),
          Words_Card(word[88],trans[88]),
          Words_Card(word[89],trans[89]),
          Words_Card(word[90],trans[90]),
          Words_Card(word[91],trans[91]),
          Words_Card(word[92],trans[92]),
          Words_Card(word[93],trans[93]),
          Words_Card(word[94],trans[94]),
          Words_Card(word[95],trans[95]),
          Words_Card(word[96],trans[96]),
          Words_Card(word[97],trans[97]),
          Words_Card(word[98],trans[98]),



        ],
      );
    }

    if (u==2 && l==2){
      return Column(
        children: [
          Words_Card(word[99],trans[99]),
          Words_Card(word[100],trans[100]),
          Words_Card(word[101],trans[101]),
          Words_Card(word[102],trans[102]),
          Words_Card(word[103],trans[103]),
          Words_Card(word[104],trans[104]),
          Words_Card(word[105],trans[105]),
        

        ],
      );
    }


  }
  }

