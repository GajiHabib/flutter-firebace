// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_local_variable, use_key_in_widget_constructors, unused_import, equal_keys_in_map



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/quizScrren.dart';

import 'admin panel/admin_panel.dart';




class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
// TextEditingController controllerone=TextEditingController();
// TextEditingController controllertwo=TextEditingController();
// TextEditingController controllerthree=TextEditingController();
// TextEditingController controllerfore=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz App',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          SizedBox(height: 200),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Text('Start Quiz'),
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          ),
          SizedBox(height: 10,),
          //  TextField(controller:controllerone,),
          //   TextField(controller: controllertwo,),
          //    TextField(controller: controllerthree,),
          //     TextField(controller: controllerfore,),
        
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:
               (context) =>AdminPanelScreen(),));
            }, 
            
            child: Text('Admin_panel')) 
        ],
      )),
    );
  }

  // Future<void> addDataToDB() async {
  //   var collection = await FirebaseFirestore.instance.collection('all_quiz');

  //   // A Quiz as Map
  //   Map<String, dynamic> quizMap = {
  //     'question': 'What is the capital of France?',
  //     'answerList': [
  //       {'answer':controllerone.text , 'isCorrect': false},
  //       {'answer':controllertwo.text , 'isCorrect': false},
  //       {'answer':controllerthree.text , 'isCorrect': true},
  //       {'answer': controllerfore.text, 'isCorrect': false},
  //     ]
  //   };
  //   //Simple Data
  //   // var data = {'quiestion': 'What is the capital Of Bangladesh'};

  
  
  //   collection.add(quizMap);
 

  // }

  Future <void> addDataToDB()async{
    var collection=FirebaseFirestore.instance.collection('data');
    Map <String,dynamic> data={
      'name':'pakistan'
  
    };
    collection.add(data);
  }

}

 


