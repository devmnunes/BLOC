import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aula Bloc')),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Id Usuario: UserId', style: TextStyle(
              fontSize: 20,
            ),
          ), 
            Text('Nome: userName', style: TextStyle(
              fontSize: 20,
              ),
            ),
            ElevatedButton(onPressed: () {

            }, 
            child: Text('Mudar valor'),
            ),
          ],
        ),
      ),
    );
  }
}
