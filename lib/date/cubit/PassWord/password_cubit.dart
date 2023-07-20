import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<bool> {
  PasswordCubit() : super(true);

  void seeornot(){
    emit(!state) ; 
  }
}