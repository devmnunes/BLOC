import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bloc/home_bloc.dart';
import 'package:flutter_application_1/pages/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo Bloc')),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is HomeLoadedState)
            return ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(title: Text('Item $index'));
              },
            );
          return Center(
            child: CircularProgressIndicator());
        },
      ),
    );
  }
}
