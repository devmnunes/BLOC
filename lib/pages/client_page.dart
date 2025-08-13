import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocs/client_bloc.dart';
import 'package:flutter_application_1/blocs/client_events.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  late final ClientBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ClientBloc();
    bloc.inputClient.add(LoadClientEvent());
  }

  @override
  void dispose() {
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.person_add))
        ],
      ),
    );
  }
}