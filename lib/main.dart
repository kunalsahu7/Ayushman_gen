import 'package:flutter/material.dart';
import 'package:untitled4/dataEnterScreen.dart';
import 'package:untitled4/homeScreen.dart';

import 'modalClass.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => SplashScreen(),
        '/': (context) => HomeScreen(),
        'entry': (context) => DataEntryScreen(),
      },
    ),
  );
}

class Global {
  static List<DataModal> alldata = [];
}

//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     Future.delayed(Duration(seconds: 2),(){
//       Navigator.pushReplacementNamed(context, 'home');
//     });
//
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Image.asset("assets/images/rnw.png", height: 75,),
//         ),
//       ),
//     );
//   }
// }
//
