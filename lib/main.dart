import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
