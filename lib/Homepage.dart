// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_local_variable, use_key_in_widget_constructors, unused_import, equal_keys_in_map

// ignore_for_file: unused_import, must_be_immutable, equal_keys_in_map, unused_local_variable

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_firebase/quizScrren.dart';

// import 'admin panel/admin_panel.dart';

// class HomeScreen extends StatelessWidget {
//    HomeScreen({super.key});
// // TextEditingController controllerone=TextEditingController();
// // TextEditingController controllertwo=TextEditingController();
// // TextEditingController controllerthree=TextEditingController();
// // TextEditingController controllerfore=TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Quiz App',
//             style: TextStyle(
//                 fontSize: 35, fontWeight: FontWeight.bold, color: Colors.teal),
//           ),
//           SizedBox(height: 200),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => QuizScreen()));
//             },
//             child: Text('Start Quiz'),
//             style: ElevatedButton.styleFrom(shape: StadiumBorder()),
//           ),
//           SizedBox(height: 10,),
//           //  TextField(controller:controllerone,),
//           //   TextField(controller: controllertwo,),
//           //    TextField(controller: controllerthree,),
//           //     TextField(controller: controllerfore,),

//             ElevatedButton(onPressed: (){
//               Navigator.push(context,MaterialPageRoute(builder:
//                (context) =>AdminPanelScreen(),));
//             },

//             child: Text('Admin_panel'))
//         ],
//       )),
//     );
//   }

//   // Future<void> addDataToDB() async {
//   //   var collection = await FirebaseFirestore.instance.collection('all_quiz');

//   //   // A Quiz as Map
//   //   Map<String, dynamic> quizMap = {
//   //     'question': 'What is the capital of France?',
//   //     'answerList': [
//   //       {'answer':controllerone.text , 'isCorrect': false},
//   //       {'answer':controllertwo.text , 'isCorrect': false},
//   //       {'answer':controllerthree.text , 'isCorrect': true},
//   //       {'answer': controllerfore.text, 'isCorrect': false},
//   //     ]
//   //   };
//   //   //Simple Data
//   //   // var data = {'quiestion': 'What is the capital Of Bangladesh'};

//   //   collection.add(quizMap);

//   // }

//   Future <void> addDataToDB()async{
//     var collection=FirebaseFirestore.instance.collection('data');
//     Map <String,dynamic> data={
//       'name':'pakistan'

//     };
//     collection.add(data);
//   }

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// }
//practis fire base//
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController controllerone = TextEditingController();
  TextEditingController controllertwo = TextEditingController();
  TextEditingController controllerthree = TextEditingController();
  TextEditingController controllerfour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: ''),
      ]),
      appBar: AppBar(
        title: Center(child: Text('App Bar')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      addDataToDB();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Colors.greenAccent)
                            ],
                          ),
                          child: Center(
                              child: Text(
                            'Add Documents',
                            style: TextStyle(fontSize: 35, color: Colors.red),
                          ))),
                    )),
              ),
            ),
            TextField(controller: controllerone),
            TextField(
              controller: controllertwo,
            ),
            TextField(
              controller: controllerthree,
            ),
            TextField(
              controller: controllerfour,
            ),
            SizedBox(
              height: 20,
            ),
                        ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder:(context) => product(),));
            }, 
            child: Text('Next')),
          ],
        ),
      ),
    );
  }

  Future addDataToDB() async {
    var collection = FirebaseFirestore.instance.collection('Like');
    Map<String, dynamic> beta = {
      'name': controllerone.text,
      'imageurl': controllertwo.text,
      'price': controllerthree.text,
      'title': controllerfour.text,
    };
    collection.add(beta);
  }
}

