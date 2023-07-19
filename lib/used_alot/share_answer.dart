import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final String? answrite ;
  final Color? anscolor ; 
  final Function() press ;
  Answer({super.key , this.anscolor , this.answrite , required this.press});
  
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width ;
    // final screenheight = MediaQuery.of(context).size.height ;
    
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
              ),
              backgroundColor: anscolor
            ),
         
        onPressed: press,
        child: SizedBox(
          
          width: screenwidth / 2,
          
          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(answrite! , 
                          style: const  TextStyle( fontSize: 20 , fontWeight: FontWeight.normal ,
                          color: Colors.white ),),
                        ),
                      ),
        ),
      ),
    );
  }
}