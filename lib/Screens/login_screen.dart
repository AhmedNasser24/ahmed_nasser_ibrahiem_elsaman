import 'package:flutter/material.dart';

import 'package:my_adv_project/Screens/quizkind.dart';

final usernametextform = TextEditingController();

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _login_form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final buttonWidth = screenWidth * 0.4;
    return Scaffold(
        // resizeToAvoidBottomInset: false,

        body: SafeArea(
      child: Stack(
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
            height: screenheight / 2,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _login_form_key,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      controller: usernametextform,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "empty";
                        } else if (value.length < 5) {
                          return "your email must be greater than 5 character";
                        } else if (value[0] != value[0].toUpperCase()) {
                          return "first character must be upper case";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        hintText: 'Enter you email',
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     labelText: 'Password',
                    //   ),
                    //   obscureText: true,
                    // ),
                    const SizedBox(height: 24.0),
                    Container(
                      width: buttonWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_login_form_key.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const QuizKind()));
                          }
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 73, 224, 13))),
                        child: const Text(
                          'Login ',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
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
          )
        ],
      ),
    ));
  }
}
