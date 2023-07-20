import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'training_case_state.dart';

class TrainingCaseCubit extends Cubit<TrainingCaseState> {
  TrainingCaseCubit() : super(TrainingCaseinitial());
  
  
  case1() {
    emit(TrainingCase1());
  }

  case2() {
    emit(TrainingCase2());
  }

  case3(){
    emit(TrainingCase3());
  }
  case4(){
    emit(TrainingCase4()) ;
  }
  case5(){
    emit(TrainingCase5()) ;
  }
  case6(){
    emit(TrainingCase6()) ;
  }
  
  
}
