import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/quiz_queston.dart';
import 'package:loginscreen/global/my_global_data.dart';
import 'package:loginscreen/used_alot/container.dart';

class QuizKind extends StatelessWidget {
  const QuizKind({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenwidth = MediaQuery.of(context).size.width ;
    // final screenheight = MediaQuery.of(context).size.height ;
    
    return  Scaffold(
      
      appBar:  AppBar( 
        
        automaticallyImplyLeading: false , 
        title: const Text("choose your quiz" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold) 
       ), 
      backgroundColor: Colors.green, 
      foregroundColor: Colors.white,
      
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuizKindContainer(
              containercolor: Colors.orange,
              quizname: "Sport Quiz",
              goingto: (){ 
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question(
                  questioncolor: Colors.orange , quizname: "Sport Quiz", questionkind: sportsTest,
                )) ) ;
              },
            ),
            
            QuizKindContainer(
              containercolor: Colors.purple,
              quizname: "History Quiz",
              goingto: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Question(
                questioncolor: Colors.purple, quizname: "History Quiz", questionkind: historyTest,
              ))) ;
              },
            ),
            QuizKindContainer(
              containercolor: Colors.red,
              quizname: "Math Quiz",
              goingto: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question(
                questioncolor: Colors.red, quizname: "Math Quiz", questionkind: mathTest ,))) ;
              },
            )
          ], 
        ),
   
    );
    
  }
}