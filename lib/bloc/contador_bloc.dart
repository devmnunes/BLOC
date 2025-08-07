import 'dart:async';

class ContadorBloc {
  //Sink - Fluxo de entrada
  StreamController<int> valorSink = StreamController();

  //Stream - Fluxo de saída
  Stream<int> get valorStream => valorSink.stream;

  ContadorBloc() {
    valorSink.add(0);
  }

  dispose() {
    valorSink.close();
  }
}
