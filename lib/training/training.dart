import 'package:flutter/material.dart';

class Training extends StatefulWidget {
   Training({super.key});
  @override
  State<Training> createState() => __TrainingState();
}

class __TrainingState extends State<Training> {
  Map<int, Color> buttonColors = {
    1: Colors.grey,
    2: Colors.grey,
    3: Colors.grey,
    4: Colors.grey,
    5: Colors.grey,
    6: Colors.grey,
  };

  Map<int, String> buttonTexts = {
    1: '',
    2: '',
    3: '',
    4: '',
    5: '',
    6: '',
  };

  void updateButtonState(int buttonIndex) {
    setState(() {
      switch (buttonIndex) {
        case 1:
          buttonColors[1] = Colors.red;
          buttonTexts[1] = buttons[buttonIndex-1];
          resetButtonColors([2, 3, 4, 5, 6]);
          break;
        case 2:
          buttonColors[2] = Colors.red;
          buttonTexts[2] = buttons[buttonIndex-1];
          resetButtonColors([1, 3, 4, 5, 6]);
          break;
        case 3:
          buttonColors[3] = Colors.red;
          buttonTexts[3] = buttons[buttonIndex-1];
          resetButtonColors([1, 2, 4, 5, 6]);
          break;
        case 4:
          buttonColors[4] = Colors.red;
          buttonTexts[4] = buttons[buttonIndex-1];
          resetButtonColors([1, 2, 3, 5, 6]);
          break;
        case 5:
          buttonColors[5] = Colors.red;
          buttonTexts[5] = buttons[buttonIndex-1];
          resetButtonColors([1, 2, 3, 4, 6]);
          break;
        case 6:
          buttonColors[6] = Colors.red;
          buttonTexts[6] = buttons[buttonIndex-1];
          resetButtonColors([1, 2, 3, 4, 5]);
          break;
      }
    });
  }
  List < String> buttons = ["قيد التنفيذ" ,"الملغية" ,"المكتملة" ,"تحت المراجعة" , "تمت" , "تحت المراقبة"] ;

  void resetButtonColors(List<int> buttonIndices) {
    for (int i = 0 ; i < buttonIndices.length ; i++) {
      buttonColors[buttonIndices[i]] = Colors.grey;
      buttonTexts[buttonIndices[i]] = '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child : Row(
              children: [
              for ( int i = 1 ; i <= buttons.length ; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  updateButtonState(i);
                },
                style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) {
                            return buttonColors[i]!;
                          },
                        ),
                      ),
                
                 child: Text( buttons[i-1] , style : const TextStyle(color: Colors.white , fontSize: 15 )),
                ),
              ),
              ],
            )),
            const SizedBox(height: 50),
            for (int i = 1; i <= 6; i++)
              if (buttonTexts[i]!.isNotEmpty)
                Container(
                  padding: const  EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    buttonTexts[i]!,
                    style: const TextStyle(fontSize: 25 , color: Colors.red , fontWeight: FontWeight.bold)  ,
                  ),
                ),
          ],
        ),
      );
   
         
  }
}