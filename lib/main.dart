import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peace_cake/Pages/home_page.dart';
import 'package:peace_cake/Pages/welcome_page.dart';
import 'package:peace_cake/Pages/details_page.dart';
import 'package:peace_cake/cubit/app_cubit.dart';
import 'package:peace_cake/cubit/app_cubit_logics.dart';
import 'package:peace_cake/navpages/cake_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:WelcomePage(),


    );
  }
}

