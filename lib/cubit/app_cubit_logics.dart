import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peace_cake/Pages/welcome_page.dart';

import 'app_cubit.dart';
import 'app_cubit_states.dart';

class AppCubicLogics extends StatefulWidget {
  const AppCubicLogics({Key? key}) : super(key: key);

  @override
  State<AppCubicLogics> createState() => _AppCubicLogicsState();
}

class _AppCubicLogicsState extends State<AppCubicLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder <AppCubit, CubitState>(
        builder:(context, state){
          if(state is WelcomeState){
            return WelcomePage();
    } else{
                return Container();
          }

          },
      ),
    );
  }
}
