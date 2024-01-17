// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Auth/sain%20in%20page.dart';
import 'package:flutter_firebase/Auth/textfild.dart';

class loginpage extends StatelessWidget {
   loginpage({super.key});
final TextEditingController controller=TextEditingController();
final TextEditingController controllerone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepPurple[100],
    
     bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
     ]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(child: Text('Login')),
            ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: Text('Email'),
           ),
           
        TextField(controller:controller,),
         Padding(
           padding: const EdgeInsets.all(10),
           child: Text('pasward'),
         ),
           TextField(controller: controllerone,),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                 color: Colors.pink,
                          ),
                          child: Icon(Icons.add_comment,color: Colors.white,),
                        ),
                        
              ),
              
            SizedBox(width: 40,),
            Text('what`s your maind?')
            
            ],
          ),
          Center(child: ElevatedButton(onPressed: ()async{
           await FirebaseAuth.instance.createUserWithEmailAndPassword(email:controller.text,
             password:controllerone.text,);
          }, child:Text('Login'))),
          SizedBox(height: 10,),
          Center(child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => saignin(), ));
          }, child: Text('create accaunt'))),
        
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
                border: Border.all(color: Colors.black87,)
              ),
             child: Icon(Icons.turn_slight_left,size: 60,color: Colors.deepPurple,shadows: [BoxShadow(blurRadius: 10,spreadRadius: 10)]),
            ),
               Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
                border: Border.all(color: Colors.black87,)
              ),
              child: Icon(Icons.phone,size: 60,color: Colors.pink,shadows: [BoxShadow(blurRadius: 10,spreadRadius: 10)]),
            ),
               Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
                border: Border.all(color: Colors.black87,)
              ),
           child: Icon(Icons.facebook,size: 60,color: Colors.blue,shadows: [BoxShadow(blurRadius: 10,spreadRadius: 10)]),
            ),
          ],),
        ],),
      ),
    );
  }
}
