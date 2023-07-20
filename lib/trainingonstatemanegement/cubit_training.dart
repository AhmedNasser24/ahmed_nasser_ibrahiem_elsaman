import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_adv_project/date/cubit/PassWord/password_cubit.dart';
import 'package:my_adv_project/date/cubit/radiobutton/radiobutton_cubit.dart';
import 'package:my_adv_project/used_alot/training_button.dart';
import 'package:my_adv_project/used_alot/training_container.dart';

import 'package:provider/provider.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_adv_project/date/cubit/TrainingCaseCubit/training_case_cubit.dart';
// import 'package:my_adv_project/date/cubit/TrainingCaseCubit/training_case_state.dart';

// import 'package:my_adv_project/trainingonstatemanegement/setstatetraining.dart';

class CubitTraining extends StatelessWidget {
  CubitTraining({super.key});
  // Map<int, Color> buttonColors = {
  //   1: Colors.grey,
  //   2: Colors.grey,
  //   3: Colors.grey,
  //   4: Colors.grey,
  //   5: Colors.grey,
  //   6: Colors.grey,
  // };

  // Map<int, String> buttonTexts = {
  //   1: '',
  //   2: '',
  //   3: '',
  //   4: '',
  //   5: '',
  //   6: '',
  // };

  // void updateButtonState(int buttonIndex) {
  // List<String> buttons = [
  //   "قيد التنفيذ",
  //   "الملغية",
  //   "المكتملة",
  //   "تحت المراجعة",
  //   "تمت",
  //   "تحت المراقبة"
  // ];

  // void resetButtonColors(List<int> buttonIndices) {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // for ( int i = 1 ; i <= buttons.length ; i++)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase1) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: "قيدالتنفيذ",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case1();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: "قيدالتنفيذ",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case1();
                                  });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase2) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: "الملغية",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case2();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: "الملغية",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case2();
                                  });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase3) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: " المكتملة ",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case3();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: " المكتملة ",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case3();
                                  });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase4) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: "تحت المراجعة",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case4();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: "تحت المراجعة",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case4();
                                  });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase5) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: "تمت",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case5();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: " تمت ",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case5();
                                  });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                          builder: (context, state) {
                            if (state is TrainingCase6) {
                              return MyButton(
                                  buttoncolor: Colors.red,
                                  buttontext: "تحت المراقبة",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case6();
                                  });
                            } else {
                              return MyButton(
                                  buttoncolor: Colors.grey,
                                  buttontext: "تحت المراقبة",
                                  press_on: () {
                                    context.read<TrainingCaseCubit>().case6();
                                  });
                            }
                          },
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 150),
              BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
                builder: (context, state) {
                  if (state is TrainingCase1) {
                    return const FastFiltercontainer(mytext: "قيد التنفيذ");
                  } else if (state is TrainingCase2) {
                    return const FastFiltercontainer(mytext: "الملغية");
                  } else if (state is TrainingCase3) {
                    return const FastFiltercontainer(mytext: "المكتملة");
                  } else if (state is TrainingCase4) {
                    return const FastFiltercontainer(mytext: "تحت المراجعة");
                  } else if (state is TrainingCase5) {
                    return const FastFiltercontainer(mytext: "تمت");
                  } else if (state is TrainingCase6) {
                    return const FastFiltercontainer(mytext: "تحت المراقبة");
                  } else {
                    return Container();
                  }
                  // "قيد التنفيذ",
                  //   "الملغية",
                  //   "المكتملة",
                  //   "تحت المراجعة",
                  //   "تمت",
                  //   "تحت المراقبة"
                },
              ),
              const SizedBox(
                height: 50,
              ),
              BlocBuilder<PasswordCubit, bool >(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      obscureText: state ,
                      decoration: InputDecoration(
                          labelText: "password",
                          suffixIcon: GestureDetector( 
                            onTap: () {
                              context.read<PasswordCubit>().seeornot() ;
                            },
                            child: Icon( state ? Icons.visibility_off : Icons.visibility ) ,
                          )),
                          
                    ),
                  );
                },
              )
              ,
             BlocBuilder<RadiobuttonCubit, int >(
               builder: (context, state) {
                
                 return 
                 Column(
                   children: [
                    for ( int i = 0 ; i < 20 ; i++)
                     RadioListTile(
                      title: Text("radio ${ i + 1}"),
                      value: i , groupValue: state , onChanged: (value){
                      context.read<RadiobuttonCubit>().selectRadio(value!) ;
                     } ),
                   ],
                 );
               },
             ) 
            ],
          ),
        ),
      ),
    );
  }
}
