import 'package:flutter/material.dart';

class QuizKindContainer extends StatelessWidget {
  final String? quizname ;
  final Color? containercolor ;
  final Function()? goingto ;
  const QuizKindContainer(
    {super.key , this.containercolor , this.goingto , this.quizname });
  
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    return Expanded(
              child :Container(
                width: screenwidth ,
                color: containercolor ,
                child: TextButton(onPressed: goingto ,
                  
                  child: Text(quizname! , 
                  style: const TextStyle( color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold ,
                  ),
                  ),
                ),
              )  
            );
  }
}