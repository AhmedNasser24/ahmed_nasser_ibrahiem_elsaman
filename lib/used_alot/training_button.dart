import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() press_on;
  final String buttontext;
  final Color buttoncolor;
  const MyButton(
      {super.key,
      required this.buttoncolor,
      required this.buttontext,
      required this.press_on});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: press_on,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttoncolor),
        ),
        child: Text(buttontext,
            style: const TextStyle(color: Colors.white, fontSize: 15)),
      ),
    );
  }
}
