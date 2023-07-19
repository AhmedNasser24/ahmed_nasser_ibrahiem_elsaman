import 'package:flutter/material.dart';
import 'package:my_adv_project/Screens/login_screen.dart';
import 'package:my_adv_project/Screens/opening_screen.dart';

class Score extends StatelessWidget {
  final int score;
  final int numquestion;
  final String state;
  const Score(
      {super.key,
      required this.numquestion,
      required this.score,
      required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/cong.jpg"),
              fit: BoxFit.fill,
              // repeat: ImageRepeat.repeat
            )),
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state,
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.green),
                    children: <TextSpan>[
                      TextSpan(
                        text: usernametextform.text,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 30),
                      ),
                      const TextSpan(
                          text: ' your score is ',
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.green)),
                      TextSpan(
                        text: "$score / $numquestion",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OpeningScreen()));
                    },
                    child: const Text(
                      "Try again",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ))
              ],
            )));
  }
}
