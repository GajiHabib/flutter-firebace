// // // ignore_for_file: prefer_const_constructors, unused_local_variable

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_firebase/model.dart';

// class product extends StatelessWidget {
//   const product({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Appbar'),),
//       body:

//        Column(
//          children: [
//            Expanded(
//              child: FutureBuilder(

//               future: getAllpost(),builder: (context, snapshot) {

//                 if (snapshot.hasData){

//                   return  ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: snapshot.data.length,
//                 itemBuilder:  (context, index) {
//                   return Column(children: [
//                     Container(
//                       height:400,
//                       width: 400,
//                       child: Image.network(snapshot.data[index].imageurl)),
//                     SizedBox(height: 20,),
//                     Text(snapshot.data[index].name,style: TextStyle(fontSize:60,color: Colors.red),),
//                     Text('very nice',style: TextStyle(fontSize:40,color: Colors.green),),
//                     Text('T-500',style: TextStyle(fontSize:25,color: Colors.blueAccent),),

//                   ],);

//                    },);
//                 }
//                 else{
//                   return CircularProgressIndicator();
//                 }
//               },

//              ),
//            ),
//       ElevatedButton(onPressed: (){
//         getAllpost();
//       },
//       child: Text('image'))
//          ],
//        ),
//     );
//   }
//     Future getAllpost()async{

//      var khirati=[

//      ];
//     var collRef= await FirebaseFirestore.instance.collection('Like').get();
//     for(var doc in collRef.docs){

//     var imageurl=doc.get('imageurl');
//     var name=doc.get('name');
//     var price=doc.get('price');
//     var title=doc.get('title');

//   print(name);
//    var pagla = sakib(imageurl: imageurl, name: name, price: price, title: title);
//    khirati.add(pagla);
//     }
//    return khirati;
//   }

// }


// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors
// firebace ✔✔✔👍chechta
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class product extends StatelessWidget {
  const product({super.key});

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
        title: Center(child: Text('Appbar'))
           ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getAllpost(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.network(snapshot.data[index].imageurl),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'flower',
                            style: TextStyle(fontSize: 50, color: Colors.red),
                          ),
                          Text(
                            'very nise',
                            style: TextStyle(fontSize: 40, color: Colors.green),
                          ),
                          Text(
                            'T-500',
                            style: TextStyle(
                                fontSize: 30, color: Colors.blueAccent),
                          ),
                          Text(
                            '\$ 10/8/2024',
                            style: TextStyle(fontSize: 20, color: Colors.pink),
                          ),
                        ],
                      );
                    },
                  );
                }else{
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: () {
                  getAllpost();
                },
                child: Text('image')),
          )
        ],
      ),
    );
  }

  Future getAllpost() async {
    var dhumghat = [];
    var collRef = await FirebaseFirestore.instance.collection('Like').get();
    for (var doc in collRef.docs) {
      var imageurl = doc.get('imageurl');
      var name = doc.get('name');
      var price = doc.get('price');
      var title = doc.get('title');
      // print(imageurl);
      var pagla =
          habib(imageurl: imageurl, name: name, price: price, title: title);

          dhumghat.add('pagla');
          print(dhumghat[0].pagla.name);
    }
    return dhumghat;
  }
}
