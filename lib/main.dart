import 'package:flutter/material.dart';

import 'package:flutter_application_1/bloc/contador_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ContadorBloc bloc = ContadorBloc();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: StreamBuilder<int>(
        stream: bloc.valorStream,
        builder: (context, snapshot) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            title: Text('BLoC State Management'),
          ),

          body: GestureDetector(
            onTap: () {
              bloc.valorSink.add((snapshot.data ?? 0) + 1);
            },

            child: Center(
              child: Text(
                snapshot.data.toString(),
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
