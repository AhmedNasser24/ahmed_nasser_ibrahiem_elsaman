import 'package:flutter/material.dart';
import 'package:my_adv_project/date/cubit/PassWord/password_cubit.dart';
import 'package:my_adv_project/date/cubit/radiobutton/radiobutton_cubit.dart';
import 'package:provider/provider.dart';
import 'package:my_adv_project/Screens/opening_screen.dart';
import 'package:my_adv_project/trainingonstatemanegement/cubit_training.dart';
import 'package:my_adv_project/trainingonstatemanegement/setstatetraining.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'date/cubit/TrainingCaseCubit/training_case_cubit.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          Provider<TrainingCaseCubit>(
          create: (context) => TrainingCaseCubit(),
        ),
        Provider<PasswordCubit>(
          create: (context) => PasswordCubit(),
        ),
        Provider<RadiobuttonCubit>(
          create: (context) => RadiobuttonCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CubitTraining(),
      ),
    );
  }
}

