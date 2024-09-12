import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

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
          Questao(perguntas[perguntaSelecionada]),
          Resposta('Resposta 1',responder),
          Resposta('Resposta 2',responder),
          Resposta('Resposta 3',responder),
        ]
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
