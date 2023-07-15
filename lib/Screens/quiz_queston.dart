
import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/score.dart';
import 'package:loginscreen/used_alot/share_answer.dart';
import 'package:loginscreen/global/my_global_data.dart';
var indx = 0 ; 
class Question extends StatefulWidget {
  Color? questioncolor ; 
  String? quizname ;
  Question({super.key , this.questioncolor , this.quizname});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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
                     Text("Question : ${indx+1} / ${mathtest.length}" , style:  const TextStyle(color : Colors.black , fontSize: 25 , fontWeight: FontWeight.w600 ),) ,
                      Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(mathtest[indx]["question"] , style: const TextStyle(color : Colors.white , fontSize: 25 ),)),
                  ],
                ),
              )),),
              
            
              Answer(
                anscolor: widget.questioncolor ,
                answrite: mathtest[indx]["ans"][0]["ans"],
              ),
              
           
              Answer(
                anscolor: widget.questioncolor ,
                answrite: mathtest[indx]["ans"][1]["ans"],
              ),
               
            
              Answer(
                anscolor: widget.questioncolor ,
                answrite: mathtest[indx]["ans"][2]["ans"],
              ),
               
            
              Answer(
                anscolor: widget.questioncolor ,
                answrite: mathtest[indx]["ans"][0]["ans"],
              ),
              
              
              Container( 
                margin: const EdgeInsets.only(top: 10),
                height: 40 ,
                width: screenwidth / 2,
                // color: Colors.white,
                
                child : ElevatedButton (onPressed: (){
                  if ( indx == mathtest.length - 1 ){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Score())) ;
                  }else {
                   setState(() {
                     indx++ ;
                   }); }
                },
                style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  
                                ),
                                backgroundColor: 
                                  MaterialStateProperty.all(widget.questioncolor) 
                              ),
                child : const Text("Submit" ,  style: TextStyle(color: Colors.black , fontSize: 20  , fontWeight: FontWeight.bold , ),)
                )
              )
          
                
                ],
              ),
      ),
    )
    );
    
  }
}