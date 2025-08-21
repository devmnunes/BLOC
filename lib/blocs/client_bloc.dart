import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/blocs/client_events.dart';
import 'package:flutter_application_1/blocs/client_state.dart';
import 'package:flutter_application_1/repositories/clients_repository.dart' show ClientsRepository;

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final _clientRepo = ClientsRepository();

  
  ClientBloc() : super(ClientInitialState()) {
    
    on<LoadClientEvent>(
      (event, emit) => emit(ClientSuccessState(clients: _clientRepo.loadClients())),
    );

    on<AddClientEvent>(
      (event, emit) => emit(ClientSuccessState(clients: _clientRepo.addClient(event.client))),
    );

    on<RemoveClientEvent>(
      (event, emit) => emit(ClientSuccessState(clients: _clientRepo.removeClient(event.client))),
    );
  }
}