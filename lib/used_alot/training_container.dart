import 'package:flutter/material.dart';

class FastFiltercontainer extends StatelessWidget {
  
  final String mytext ;
  const FastFiltercontainer ({super.key , required this.mytext});

  @override
  Widget build(BuildContext context) {
    return Center(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    mytext,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ));
  }
}