
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bloc/home_bloc.dart';
import 'package:flutter_application_1/pages/bloc/home_event.dart';
import 'package:flutter_application_1/pages/bloc/home_state.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: BlocProvider<HomeBloc(
        builder: (BuildContext context) => HomeBloc(HomeLoadingState())..add(HomeFetchList()),
      child: HomePage()),
    );
  }
}