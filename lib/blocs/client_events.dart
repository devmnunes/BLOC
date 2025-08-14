import 'package:flutter_application_1/client.dart';
part of 'client_bloc.dart';

abstract class ClientEvent {}

class LoadClientEvent extends ClientEvent {}

class AddClientEvent extends ClientEvent {
  Client client;

  AddClientEvent({required this.client});
}

class RemoveClientEvent extends ClientEvent {
  Client client;

  RemoveClientEvent({required this.client});
}
