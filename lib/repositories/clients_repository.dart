import 'package:flutter_application_1/client.dart';

class ClientsRepository {
  final List<Client> _clients = [];

  List<Client> loadClients() {
    _clients.addAll([
      Client(nome: 'Matheus Nunes'),
      Client(nome: 'Daniela dos Santos'),
      Client(nome: 'Marcos Nunes'),
      Client(nome: 'Nathan Gabriel dos Santos'),
    ]);
    return _clients;
  }

  List<Client> addClient(Client client) {
    _clients.add(client);
    return _clients;
  }

  List<Client> removeClient(Client client) {
    _clients.remove(client);
    return _clients;
  }
}