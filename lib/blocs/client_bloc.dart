import 'dart:async';
import 'package:flutter_application_1/blocs/client_events.dart';
import 'package:flutter_application_1/blocs/client_state.dart';
import 'package:flutter_application_1/client.dart';
import 'package:flutter_application_1/repositories/clients_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'client_event.dart';
part 'client_state';

class ClientBloc extends Bloc<ClientState, ClientEvent> {
  final _clientRepo = ClientRepository();

  //final StreamController<ClientEvent> _inputClientController = StreamController<ClientEvent>();
  //final StreamController<ClientState> _outputClientController = StreamController<ClientState>();

  //Sink<ClientEvent> get inputClient => _inputClientController.sink;
  //Stream<ClientState> get stream => _outputClientController.stream;

  ClientBloc() : super(ClientInitialState()) {
    on<LoadClientEvent>(
      (event, emit) => emit(ClientSuccessState(clients: _clientRepo.loadClients())),
    );

    }
  }
  
  

  /* _mapEventToState(ClientEvent event) {
    List<Client> clients = [];

    if (event is LoadClientEvent) {
      clients = _clientRepo.loadClients();
    } 
    else if (event is AddClientEvent) {
      clients = _clientRepo.addClient(event.client);
    } 
    else if (event is RemoveClientEvent) {
      clients = _clientRepo.removeClient(event.client);
    }
    _outputClientController.add(ClientSuccessState(clients: clients));
} */
}
