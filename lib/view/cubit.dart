import 'package:fisrt_bloc_project/view/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountCubit extends Cubit<CountStates> {
  CountCubit() : super(CountInItState());
  int counter = 0;
  void plus() {
    counter++;
    emit(CountInItState());
  }

  void minus() {
    counter--;
    emit(CountInItState());
  }

  void reset() {
    counter = 0;
     emit(CountInItState());

  }
}
