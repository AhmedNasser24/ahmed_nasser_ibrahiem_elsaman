
import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/score.dart';
import 'package:loginscreen/used_alot/share_answer.dart';
import 'package:loginscreen/global/my_global_data.dart';

class Question extends StatefulWidget {
  Color? questioncolor ; 
  String? quizname ;
  List questionkind ;
  Question({super.key , this.questioncolor , this.quizname , required this.questionkind});
  
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int indx = 0 ; 
  int score = 0 ;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    // final screenheight = MediaQuery.of(context).size.height ;
    return Scaffold(
      
      appBar: AppBar( title:   Text(widget.quizname!, 
      style: const TextStyle( color: Colors.white ,
       ),
       
      ) ,
      automaticallyImplyLeading: false ,
      centerTitle : true ,
      backgroundColor: widget.questioncolor,
    ),
    body: SingleChildScrollView(
      child: Container(
        width: screenwidth,
        color:const  Color.fromARGB(255, 240, 236, 236),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child : Container(
                width: MediaQuery.of(context).size.width * 4 / 5 ,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  color: widget.questioncolor ,
                  borderRadius: BorderRadius.circular(35) ,
                ), 
                child:  Center ( child : Column(
                  
                  children:  [
                     Text("Question : ${indx+1} / ${widget.questionkind.length}" , style:  const TextStyle(color : Colors.black , fontSize: 25 , fontWeight: FontWeight.w600 ),) ,
                      Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(widget.questionkind[indx]["question"] , style: const TextStyle(color : Colors.white , fontSize: 25 ),)),
                  ],
                ),
              )),),
              
              for ( int i = 0 ; i < (widget.questionkind[indx]["answers"] as List).length; i++ )
              Answer(
                anscolor: widget.questioncolor ,
                answrite: widget.questionkind[indx]["answers"][i]["answer"],
                press: (){
                  if ( indx == widget.questionkind.length - 1){
                    score += widget.questionkind[indx]["answers"][i]["score"] as int  ;
                    String state ; 
                    if ( score >= 0.5 * indx){ 
                      state = "Congratulation" ;
                    }
                    else {
                      state = "Failed" ;
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Score(
                      numquestion: indx + 1 , score: score, state: state  ,
                    ))) ;
                  }
                  else{
                    score += widget.questionkind[indx]["answers"][i]["score"] as int  ;
                    setState(() {
                      indx++ ;
                    });
                    
                  }
                },
              ),
              
           
            
              
              
          
                
                ],
              ),
      ),
    )
    );
    
  }
}