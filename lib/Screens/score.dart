import 'package:flutter/material.dart';
// import 'package:loginscreen/Screens/login_screen.dart';
import 'package:loginscreen/Screens/opening_screen.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body : Container( 
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/cong.jpg"),
            fit: BoxFit.fill ,
            // repeat: ImageRepeat.repeat 
            )
            ) , 
            
            
          
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                  text: const TextSpan(
                  text: "Congaratulation" ,
                  style: TextStyle(fontSize: 25 , fontStyle: FontStyle.italic , color: Colors.green),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Ahmed Nasser ',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue , fontSize: 30),
                    ),
                    TextSpan(
                      text:  ' your score is ' ,
                      style: TextStyle(fontSize: 25 , fontStyle: FontStyle.italic , color: Colors.green)
                    ),
                    TextSpan(
                      text: ' 19 / 20 ',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue , fontSize: 30),
                    ),
                  ],
                ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OpeningScreen() ));
                }, child: const  Text("try again" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500 , color: Colors.red), ))
            ],
          )
        )
    );
  }
}