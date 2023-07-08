import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.4;
    return  Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/planet.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
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
                          onPressed: (){},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor: 
                              MaterialStateProperty.all(Colors.blue) 
                          ),
                          child: Text( 'Login',
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
              ),
            ),
          ],
        ),
    );
  }
}