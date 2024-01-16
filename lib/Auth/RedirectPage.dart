
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import '../Homepage.dart';
// import 'LoginPage.dart';

// class RedirectPage extends StatelessWidget {
//   const RedirectPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           print('User Logged in');
//           return HomeScreen();
//         } else {
//           print('User Not Logged in');
//           return LoginPage();
//         }
//       },
//     );
//   }
// }