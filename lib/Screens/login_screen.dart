import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/bike_market.dart';
import 'package:loginscreen/Screens/quizkind.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final buttonWidth = screenWidth * 0.4;
    return  Scaffold(
      // resizeToAvoidBottomInset: false,
        
        
        body : SafeArea (
        child : Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/planet.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
             Container(
              width: screenWidth,
              height: screenheight / 2 ,
                 padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child:SingleChildScrollView(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 24.0),
                      Container(
                        width: buttonWidth ,
                        
                        child: OutlinedButton(
                          onPressed: (){
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const QuizKind())) ;
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor: 
                              MaterialStateProperty.all(Color.fromARGB(255, 73, 224, 13)) 
                          ),
                          child: Text( 'Login ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.centerRight ,
                          child : Text(
                          'new to quiz , register',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              
             )
          ],
          ),
          )
        );
    
  }
}

