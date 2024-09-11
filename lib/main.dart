import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(perguntas[0]),
      ),
      body: Column(
        children: [
          Text(perguntas[0]),
          ElevatedButton(
            onPressed: () => print('Resposta 1!'),
            child: const Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: () => print('Resposta 2!'),
            child: const Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: () => print('Resposta 3!'),
            child: const Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}
