import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocs/client_bloc.dart';
import 'package:flutter_application_1/blocs/client_events.dart';
import 'package:flutter_application_1/blocs/client_state.dart';
import 'package:flutter_application_1/client.dart';

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
    bloc.add(LoadClientEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        actions: [
          IconButton(
            onPressed: () {
              bloc.add(
                AddClientEvent(client: Client(nome: 'Miguel')),
              );
            },
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
      body: StreamBuilder<ClientState>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          final clientList = snapshot.data?.clients ?? [];
          return ListView.separated(
            itemCount: clientList.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: ClipRRect(
                  child: Text(clientList[index].nome.substring(0, 1)),
                  borderRadius: BorderRadiusGeometry.circular(50),
                ),
              ),
              title: Text(clientList[index].nome),
              trailing: IconButton(
                onPressed: () {
                  bloc.add(
                    RemoveClientEvent(client: clientList[index]),
                  );
                },
                icon: Icon(Icons.remove),
              ),
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}
