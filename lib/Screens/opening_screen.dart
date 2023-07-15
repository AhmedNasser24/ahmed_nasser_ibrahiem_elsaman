import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> myList=[1,1.2,"",true,null];

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 154, 70, 168),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              

              Image.asset(
                "assets/quizLogo.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.4,
              ),
              // Image.network(
              //     "https://www.shutterstock.com/image-vector/quiz-check-speech-bubble-sign-260nw-281084969.jpg")
              const Text("ITI Quiz App",
                  style:

                   TextStyle(
                      color: Color.fromARGB(255, 3, 233, 23),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                  ),
              const SizedBox(
                height: 12,
              ),
              const Text("We Are Creative, enjoy our App",
                    style: 
    
                   TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                  ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),

              const Spacer(),

              
              Container(
                width: double.infinity,
                
                // padding: EdgeInsets.all(20),

                child: ElevatedButton(
                    style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 199, 179, 2)),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    )),
                    onPressed: () {
                     
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                        
                    )
                    
                    ),
              ),

              // Checkbox(
              //   value: true,
              //   onChanged: (value) {},
              // ),
              // Radio(
              //   value: "groupValue",
              //   groupValue: "groupValue",
              //   onChanged: (value) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
