import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/score.dart';

class Question extends StatelessWidget {
  const Question({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    final screenheight = MediaQuery.of(context).size.height ;
    return Scaffold(
    //   appBar: AppBar( title: const  Text("Math quiz " , 
    //   style: TextStyle(color: Colors.white  , 
    //   fontSize: 30 , fontWeight: FontWeight.bold , ),
      
    //   ) ,
      
    //   backgroundColor: Colors.red,
    // ),
    body: Column(
      children: [
        Container(
          height: screenheight * 8.5 / 10 ,
          width: screenwidth,
          color: Color.fromARGB(255, 240, 236, 236),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child : Container(
                  width: MediaQuery.of(context).size.width * 4 / 5 ,
                  height: screenheight / 4 ,
                  padding: const EdgeInsets.all(15),
                  decoration:  BoxDecoration(
                    color: Color.fromARGB(255, 224, 85, 4) ,
                    borderRadius: BorderRadius.circular(35) ,
                  ), 
                  child: Center ( child : Text(" 3 + 8 + 4 * 6 + 2 / 2 =  " , style: TextStyle(color : Colors.white , fontSize: 25 ),),
                )),),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: screenwidth / 3 ,
                      height: screenheight / 6 ,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 54, 149) ,
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: 
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}  , shape: CircleBorder(),) , 
                          Center (
                            child : Text("36" , style: TextStyle( fontSize: 20 , fontWeight: FontWeight.normal 
                            , color: Colors.white ),)
                          ),
                        ],
                      ), ) ,
                      Container(
                      padding: const EdgeInsets.all(15),
                      width: screenwidth / 3 ,
                      height: screenheight / 6 ,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 133, 18) ,
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: 
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}  , shape: CircleBorder(),) , 
                          Center (
                            child : Text("40" , style: TextStyle( fontSize: 20 , fontWeight: FontWeight.normal 
                            , color: Colors.white ),)
                          ),
                        ],
                      ), ) , 
                      ]
                    ),
                    Row (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: screenwidth / 3 ,
                      height: screenheight / 6 ,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 13, 214, 40) ,
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: 
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}  , shape: CircleBorder(),) , 
                          Center (
                            child : Text("50" , style: TextStyle( fontSize: 20 , fontWeight: FontWeight.normal 
                            , color: Colors.white ),)
                          ),
                        ],
                      ), ) ,
                      Container(
                      padding: const EdgeInsets.all(15),
                      width: screenwidth / 3 ,
                      height: screenheight / 6 ,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 40, 10, 211) ,
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: 
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}  , shape: CircleBorder(),) , 
                          Center (
                            child : Text("91" , style: TextStyle( fontSize: 20 , fontWeight: FontWeight.normal 
                            , color: Colors.white ),)
                          ),
                        ],
                      ), ) , 
                      ]
                    )
                  ],
                ),
        ),
        Spacer() ,
        Container( 
          height: screenheight * 1.5 / 10,
          width: screenwidth,
          color: Colors.green,
          
          child : Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton (onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Score())) ;
              },
              child : Text("Submit" ,  style: TextStyle(color: Colors.blue , fontSize: 30 ),)
              ),
              
            ],)
        )
      ],
    )
    );
    
  }
}