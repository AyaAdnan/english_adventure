import 'package:flutter/material.dart';

const kOrange =Color(0xFFF99E2B);
const kWhiteColor = Colors.white;
const kBlack = Colors.black;
const kGreen =Colors.green;
const kRed =Colors.red;
const kPrimaryGradient =LinearGradient(
  colors:[
    Color(0xFF4840B1),
    Color(0xFFb44BC4),
  ],
  begin: FractionalOffset.topLeft,
  end: FractionalOffset.bottomRight,
);

final question = const [
  { //u1 l1
'questionText': 'What\'s the meaning of Grandfather ? ',
'answers': [
{'text': 'الام', 'Score': 0},
{'text': 'الجد', 'Score': 1},
{'text': 'الجدة', 'Score': 0},
{'text': 'العم', 'Score': 0}
]
},
{
'questionText': 'Aunt X ------ ',
'answers': [
{'text': 'Mother', 'Score': 0},
{'text': 'Sister', 'Score': 0},
{'text': 'Grandmother', 'Score': 0},
{'text': 'Uncle', 'Score': 1}
]
},
{
'questionText': 'How old --- Wisam ? ',
'answers': [
{'text': 'is', 'Score': 1},
{'text': 'are', 'Score': 0},
{'text': 'you', 'Score': 0},
{'text': 'am', 'Score': 0}
]
},
{
'questionText': '----- Sisters do you have ?  ',
'answers': [
{'text': 'How many', 'Score': 1},
{'text': 'How old', 'Score': 0},
{'text': 'where', 'Score': 0},
{'text': 'can', 'Score': 0}
]
},

{
'questionText': 'Sister X -----',
'answers': [
{'text': 'Mother', 'Score': 0},
{'text': 'Cousin', 'Score': 0},
{'text': 'Brother', 'Score': 1},
{'text': 'Grandfather', 'Score': 0}
]
},





//unit one,L 2
    {
'questionText': 'Complete F--m-r',
'answers': [
{'text': 'ree', 'Score': 0},
{'text': 'rty', 'Score': 0},
{'text': 'rea', 'Score': 0},
{'text': 'are', 'Score': 1}
]
},

{
'questionText': 'ربة منزل ترجم',
'answers': [
{'text': 'House wife', 'Score': 1},
{'text': 'Engineer ', 'Score':  0},
{'text': 'It programmer', 'Score':  0},
{'text': 'farmer', 'Score': 0}
]
},

{
'questionText': 'what is the meaning of Engineer ? ',
'answers': [
{'text': 'فلاح', 'Score':  0},
{'text': 'مهندس', 'Score':  0},
{'text': 'مبرمج', 'Score':  1},
{'text': 'سائق', 'Score':  0}
]
},

{
'questionText': 'نادل ترجم',
'answers': [
{'text': 'Farmer', 'Score': 1},
{'text': 'Teacher', 'Score': 0},
{'text': 'sister ', 'Score': 0},
{'text': 'aunt', 'Score': 0}
]
},

{
'questionText': 'The person who tech you Englsh called ?',
'answers': [
{'text': 'Math teacher ', 'Score': 0},
{'text': 'English teacher', 'Score': 1},
{'text': 'Arabic teacher ', 'Score': 0},
{'text': 'French teacher ', 'Score': 0}
]
},




//unit one,L3
{
'questionText': '------ work in  Restaurant. ',
'answers': [
{'text': ' Waiter', 'Score': 1},
{'text': 'farmer' , 'Score': 0},
{'text': 'teacher ', 'Score': 0},
{'text': 'Engineer ', 'Score': 1}
]
},

{
'questionText': ' IT programmer work in ------ .',
'answers': [
{'text': 'hospital ', 'Score': 0},
{'text':  'building site', 'Score': 0},
{'text': 'office', 'Score': 1},
{'text':  'farm', 'Score': 0}
]
},

  {
'questionText': ' Where does the farmer work? ',
'answers': [
{'text': 'oil refinery ', 'Score': 0},
{'text': 'hospital ', 'Score': 0},
{'text': 'farm ', 'Score': 1},
{'text': 'roads', 'Score': 0}
]
},
  {
'questionText': 'A housewife works ----- home',
'answers': [
{'text': 'in', 'Score': 0},
{'text': 'on', 'Score': 0},
{'text': 'by', 'Score': 0},
{'text': 'at', 'Score': 1}
]
},
  {
'questionText': 'Does your father work ------ an office?',
'answers': [
{'text': 'at', 'Score': 0},
{'text': 'on', 'Score':0},
{'text': 'in', 'Score':1},
{'text': 'to', 'Score': 0}
]
}





  ,{
//unit one ,L4
'questionText': ' he ----- To work everyday. ',
'answers': [
{'text': 'go', 'Score': 0},
{'text': ' goes', 'Score': 1},
{'text': ' got', 'Score': 0},
{'text': 'gone', 'Score':0}
]
}

  ,{
'questionText': 'Ali and I ----- home at 7:30am? ',
'answers': [
{'text': 'leaves', 'Score': 1},
{'text': 'leave', 'Score':0},
{'text': 'go', 'Score': 0},
{'text': 'goes', 'Score': 0}
]
}
,{
'questionText': 'He ----- a breakfast early in the morning ? ',
'answers': [
{'text': 'has', 'Score': 1},
{'text': 'have', 'Score': 0},
{'text': 'had', 'Score': 0},
{'text': 'was', 'Score': 0}
]
}
  ,{
'questionText': 'I ---- tow brothers',
'answers': [
{'text': 'has', 'Score': 0},
{'text': 'have', 'Score': 1},
{'text': 'had', 'Score': 0},
{'text': 'was', 'Score': 0}
]
}

  ,{
'questionText': '------ they leave home at 8:30 am?',
'answers': [
{'text': 'do', 'Score': 1},
{'text': 'does ', 'Score':0},
{'text': 'did', 'Score': 0},
{'text': 'are', 'Score': 0}
]
}





,{
//unit one, L 5
'questionText': '-----  use computers and make programs.',
'answers': [
{'text': 'It programmers ', 'Score':1},
{'text': 'a farmer ', 'Score':0},
{'text': 'Teacher', 'Score': 0},
{'text': ' Pilot', 'Score': 0}
]
}
,{
'questionText': 'I love driving , I want to be a ----',
'answers': [
{'text': 'Fireman', 'Score': 0},
{'text': 'a nurse', 'Score':0},
{'text': 'Farmer', 'Score': 0},
{'text': 'Bus Driver', 'Score': 1}
]
}
,{
'questionText': 'Who works with children and help them learn a lot ?',
'answers': [
{'text': 'It programmer ', 'Score': 0},
{'text': 'a farmer ', 'Score':0},
{'text': 'Teacher', 'Score': 1},
{'text': 'Pilot', 'Score': 0}
]
}
  ,{
'questionText': 'A ----- helps ill people',
'answers': [
{'text': 'bus driver', 'Score': 0},
{'text': 'Football player', 'Score':0},
{'text': 'Doctor', 'Score': 1},
{'text': 'It programmer', 'Score': 0}
]
}
,{
'questionText': 'When I grow up I want to be a ------ and build things.',
'answers': [
{'text': 'It programmer ', 'Score': 0},
{'text': 'a farmer ', 'Score':0},
{'text': 'Teacher', 'Score': 0},
{'text': 'Engineer', 'Score': 1}
]
}

//unit one ,L 6
  ,{
'questionText': ' My anut ------ in karbala',
'answers': [
{'text': 'live', 'Score':0},
{'text': 'life', 'Score':0},
{'text': 'lifes', 'Score': 0},
{'text': 'lives', 'Score': 1}
]
}
,{
'questionText': ' My uncle ----- sitting there ',
'answers': [
{'text': 'are', 'Score': 0},
{'text': 'am', 'Score':0},
{'text': 'it', 'Score': 0},
{'text': 'is', 'Score':1}
]
},


{
'questionText': 'Where ----- Farah\'s father live?',
'answers': [
{'text': 'dose', 'Score': 1},
{'text': 'do', 'Score':0},
{'text': 'was', 'Score': 0},
{'text': 'were', 'Score': 0}
]
},
{
'questionText': 'Farah\'s father lives ----- Dubai.',
'answers': [
{'text': 'in', 'Score': 1},
{'text': 'on', 'Score':0},
{'text': 'at', 'Score': 0},
{'text': 'near', 'Score':0},


]
}
  ,{
'questionText': '----- is the job of Han\'s mum and dad?',
'answers': [
{'text': 'when', 'Score': 0},
{'text': 'where', 'Score':0},
{'text': 'what', 'Score': 1},
{'text': 'who', 'Score': 0}
]
},




  {
// unit one ,L 7
'questionText': 'My father is an engineer , ------- works  in an oil refinery.',
'answers': [
{'text': 'he', 'Score': 1},
{'text': 'she', 'Score': 0},
{'text': 'it', 'Score': 0},
{'text': 'him', 'Score': 0}
]
}

  ,{
'questionText': 'I am good at math\’s and I want to be an engineer, ------- is a difficult job.',
'answers': [
{'text': 'It', 'Score': 1},
{'text': 'I', 'Score':0},
{'text': 'is', 'Score': 0},
{'text': 'am', 'Score': 0}
]
},
  {
'questionText': 'She has two younger brothers. ----- are twins.',
'answers': [
{'text': 'are', 'Score': 0},
{'text': 'you', 'Score':0},
{'text': 'they', 'Score': 1},
{'text': 'them', 'Score': 0}
]
},
  {
'questionText': ' I live in Basra. ------ is in the south of Iraq.',
'answers': [
{'text': 'are', 'Score': 0},
{'text': 'it', 'Score':1},
{'text': 'they', 'Score': 0},
{'text': 'am', 'Score': 0}
]
}

  ,{
'questionText': ' My mother is a housewife. ------- works at home..',
'answers': [
{'text': 'are', 'Score': 0},
{'text': 'you', 'Score':0},
{'text': 'they', 'Score': 0},
{'text': 'she', 'Score': 1}
]
}
,
  {
//unit one, L 8

'questionText': 'What ------ the most you like to prepare ?',
'answers': [
{'text': 'is', 'Score': 1},
{'text': 'are', 'Score':0},
{'text': 'it', 'Score': 0},
{'text': 'am', 'Score': 0}
]
}
,
  {
'questionText': '------- told her she would become a pharmacist?.',
'answers': [
{'text': 'whose' , 'Score': 0},
{'text': 'who', 'Score':1},
{'text': 'when', 'Score': 0},
{'text': 'whom', 'Score': 0}
]
}
,
  {
'questionText': 'My Mum ----- I will be a Doctor .',
'answers': [
{'text': 'say', 'Score': 0},
{'text': 'saying', 'Score':0},
{'text': 'says', 'Score': 1},
{'text': 'sow', 'Score': 0}
]
}
,{
'questionText': 'sunny X ------ ',
'answers': [
{'text': 'cloudy', 'Score': 1},
{'text': 'snowy', 'Score':0},
{'text': ' hot', 'Score': 0},
{'text': 'cold', 'Score': 0}
]
}
,{
'questionText': 'she is ',
'answers': [
{'text': 'she\’s', 'Score': 1},
{'text': 'she has', 'Score':0},
{'text': ' shes', 'Score': 0},
{'text': 'she was', 'Score': 0}
]
}
,






  {

// unit 2, L 1

'questionText': 'What\’s the jug made of?.',
'answers': [
{'text': 'Plastic', 'Score': 0},
{'text': 'denim', 'Score':1},
{'text': 'iron', 'Score': 0},
{'text': 'glass', 'Score': 0}
]
},
{
'questionText': 'What are the jeans made of?',
'answers': [
{'text': 'denim', 'Score': 0},
{'text': 'Plastic', 'Score':0},
{'text': 'Wood', 'Score': 0},
{'text': 'glass', 'Score': 1}
]
},
  {
'questionText': 'Where ----- I put my colored pencils?',
'answers': [
{'text': 'can', 'Score': 1},
{'text': 'was', 'Score':0},
{'text': 'were', 'Score': 0},
{'text':  'might', 'Score': 0}
]
},

  {
'questionText': 'What is a knives made of?.',
'answers': [
{'text': 'Wool', 'Score': 0},
{'text': 'Metal', 'Score':1},
{'text': 'silk', 'Score': 0},
{'text': 'nylon', 'Score': 0}
]
}
,
  {
'questionText': 'The T-shirt made of Cotton ',
'answers': [
{'text': 'True', 'Score': 0},
{'text': 'False', 'Score':1},

]
}

,






  {
// unit 2, L 2
'questionText': '------ car is too expensive',
'answers': [
{'text': 'thay', 'Score': 0},
{'text': 'that', 'Score':0},
{'text': 'these', 'Score': 1},
{'text': 'those', 'Score': 0}
]
},
  {
'questionText': 'That for singular,these for.',
'answers': [
{'text': 'singular', 'Score': 0},
{'text': 'plural', 'Score':1},
{'text': 'negative', 'Score': 0},
{'text': 'noun', 'Score': 0}
]
}

,
  {
'questionText': 'I need a new dress , Where I go ?',
'answers': [
{'text': 'Clothes shop', 'Score': 1},
{'text': 'Cafe', 'Score':0},
{'text': 'Supermarket', 'Score': 0},
{'text': 'Play Area', 'Score': 0}
]
},
  {
'questionText': 'Where should i go for ice-cream',
'answers': [
{'text': 'Women\'s fashion', 'Score': 1},
{'text': 'Children\'s fashion', 'Score':0},
{'text': 'Cafe', 'Score': 0},
{'text': 'Computer shop', 'Score': 0}
]
}
,
  {
'questionText': 'I don’t want to buy anything. I want to play. Where is the ------ ?',
'answers': [
{'text': 'Sunny', 'Score': 0},
{'text': 'Cloudy', 'Score':1},
{'text': 'iced', 'Score': 0},
{'text': 'windy', 'Score': 0}
]
}


];
