import 'package:flutter/material.dart';
import 'quiz_queston.dart';

class QuizKind extends StatelessWidget {
  const QuizKind({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    final screenheight = MediaQuery.of(context).size.height ;
    return  Scaffold(
      appBar:  AppBar(  title: const  Center( child : Text("choose your quiz" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)  )), 
      backgroundColor: Colors.green, 
      foregroundColor: Colors.white,
      
      ),
      body: Container(
        height: double.infinity ,
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                
                child :Container(
                  
                  width: screenwidth ,
                  decoration :const BoxDecoration(
                    color: Color.fromARGB(255, 189, 171, 5) ,
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Question()));
                  },
                    
                    child: const Text("Sport Quiz" , 
                    style: TextStyle( color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold ,
                    ),
                    ),
                    
                  ),
                )  ),
                Expanded(
                  
                  child : Container(
                  width: screenwidth  ,
                  decoration :const BoxDecoration(
                    color: Colors.purple ,
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Question()));
                  },
                  
                    child: const Text("History Quiz" , 
                    style: TextStyle( color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold ,
                    ),
                    ),
                    
                  ),
                )),
                Expanded(
                 
                child : Container(
                  width: screenwidth  ,
                  decoration :const BoxDecoration(
                    color: Colors.red ,
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Question()));
                  },
                  
                    child: const Text("Math Quiz" , 
                    style: TextStyle( color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold ,
                    ),
                    ),
                    
                  ),
                ))
              ], 
            ),
        
      ),
   
    );
    
  }
}