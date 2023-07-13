import 'package:flutter/material.dart';

class Learning extends StatelessWidget {
  const Learning({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body : Container(
        width: double.infinity,
        // height: 300 ,
        // alignment: Alignment.topLeft ,
        // margin:  EdgeInsets.all(20),
        // padding:const EdgeInsets.all(20) ,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // image:DecorationImage(
          //   fit : BoxFit.cover ,
          //   image: AssetImage("assets/planet.jpg") 
          ), 
          
          // border: Border.all(width: 20 , color: Colors.black ),
          // // border: Border(left: BorderSide(color: Colors.black , width: 20)) ,
          // // borderRadius: BorderRadius.only(topLeft: Radius.circular(20) ),
          // borderRadius: BorderRadius.circular(20),
        // ),
        
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
           
        children : [
          Expanded(
            flex: 4,
            child: Container(child: Text("one" , style: TextStyle(color: Colors.white),), color: Color.fromARGB(255, 4, 180, 233))),
          Expanded(
            flex: 2,
            child: Container(child: Text("two" , style: TextStyle(color: Colors.white),), color: Colors.black)),
          Expanded(
            flex: 3,
            child: Container(child: Text("three" , style: TextStyle(color: Colors.white), ), color: Colors.red)),
        //  const Text("ahmed is good " ,
        //   style: TextStyle(color: Colors.red ,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   wordSpacing: 1 ,
        //   letterSpacing: 2,
        //   // decoration: TextDecoration.lineThrough,
        //   // backgroundColor: Colors.green 
        //   shadows: [
        //     Shadow( color : Colors.green , 
        //     blurRadius: 10  ,  // degree of clear
        //     offset: Offset(20,20) 
        //     )
        //   ]
      
        // )
        // ),
        // Image(image: AssetImage("assets/loginImage.png"), height: 70 , width: 70,)
        ])
      )
    );
  }
}