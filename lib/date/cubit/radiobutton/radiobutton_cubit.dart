import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radiobutton_state.dart';

class RadiobuttonCubit extends Cubit<int> {
  RadiobuttonCubit() : super(0);
  void selectRadio(int value){
    emit(value) ; 
  }
}
