// // ignore_for_file: unused_local_variable

// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'allquiz.dart';

// class Helpers {
//   static Future<List<Quiz>> getAllQuiz() async {
//     List<Quiz> quizList = [];

//     var collectionSnapshot =
//         await FirebaseFirestore.instance.collection('jamia').get();

//     //Loop for All Document in Collection
//     for (var documentSnapshot in collectionSnapshot.docs) {
//       String question = documentSnapshot.get('question');
//       List answerMapList = documentSnapshot.get('answerList');

//       var docID = documentSnapshot.reference.id;

//       // print('Doc ID $docID');

//       List<Answer> answerList = [];

//       //Loop for All Answers in Answer list in Document.///////
//       for (var answerMap in answerMapList) {
//         Answer myAnswer = Answer(
//             answer: answerMap['answer'], isCorrect: answerMap['isCorrect']);
//         answerList.add(myAnswer);
//       }

//       Quiz myQuiz = Quiz(question:question, answerList: answerList,id: docID);

//       quizList.add(myQuiz);

//       // print(answerMapList);
//     }

//     return quizList;
//   }
// }
