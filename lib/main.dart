import 'package:flutter/material.dart';
// import 'Screens/login_screen.dart';
// import 'Screens/quizkind.dart';
// import 'Screens/quiz_queston.dart';
// import 'package:loginscreen/Screens/score.dart';
import 'Screens/opening_screen.dart';
// import 'Screens/login_screen_iti.dart';
// import 'Screens/learning.dart';
// import 'Screens/bike_market.dart';
void main() {
  runApp(const OurQuizzApp());
}


class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpeningScreen (),
    );
  }
}