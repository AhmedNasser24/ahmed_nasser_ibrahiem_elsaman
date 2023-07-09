import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bike Market'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Perform action when the button is pressed
            
          },
          icon: Icon(Icons.add),
          label: Text('Add Item'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 6.0,
          tooltip: 'Add Item',
          shape: 
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          heroTag: 'addButton',
          splashColor: Colors.yellow,
          focusColor: Colors.red,
          hoverColor: Colors.green,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
      body: ListView(
         children: [
          Container(
            color: Colors.white,
            height: 200 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
            child:  Image.asset("assets/bike1.png" , height: 200 ,)
          ),
          Container( 
            color: Colors.red,
            height: 100 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
          ),
          Container( 
            color: Colors.white,
            height: 200 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
            child : Image.asset("assets/bike2.png" , height: 200,)
          ),
          Container( 
            color: Colors.red,
            height: 100 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
          ),
          Container( 
            color: Colors.white,
            height: 200 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
            child : Image.asset("assets/bike3.png" , height: 200,)
          ),
          Container( 
            color: Colors.red,
            height: 100 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
          ),
          Container( 
            color: Colors.white,
            height: 200 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
            child : Image.asset("assets/bike4.png" , height: 200,)
          ),
          Container( 
            color: Colors.red,
            height: 100 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
          ),
          Container( 
            color: Colors.white,
            height: 200 ,
            margin: EdgeInsets.only( top: 100 , bottom: 100),
            child : Image.asset("assets/bike5.png" , height: 200,)
          )
        ],
      ),
    );
  }
}