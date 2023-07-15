import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  String? answrite ;
  Color? anscolor ; 
  Answer({super.key , this.anscolor , this.answrite});
  
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    final screenheight = MediaQuery.of(context).size.height ;
    return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all( 8 ),
                  width: screenwidth / 3 ,
                  
                  decoration: BoxDecoration(
                    color: anscolor  ,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}  , shape: const CircleBorder(),) , 
                        Text(answrite! , 
                        style: const TextStyle( fontSize: 20 , fontWeight: FontWeight.normal ,
                        color: Colors.white ),),
                      ],
                    ),
                  ), );
  }
}