
import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }
}

