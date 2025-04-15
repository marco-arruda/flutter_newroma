import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainApp createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  var frases = [
    'A vida é como andar de bicicleta. Para manter o equilíbrio, você deve continuar em movimento.',
    'A única maneira de fazer um ótimo trabalho é amar o que você faz.',
    'A felicidade não é algo pronto. Ela vem de suas próprias ações.',
    'O sucesso é a soma de pequenos esforços repetidos dia após dia.',
    'A vida é 10% do que acontece com você e 90% de como você reage a isso.',
  ];

  var fraseGerada = 'Clique abaixo para gerar uma frase!';

  void gerarFrase() {
    var numeroAleatorio = Random().nextInt(frases.length);
    setState(() {
      fraseGerada = frases[numeroAleatorio];
    });
  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gerador de Frases'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  alignment: Alignment.center,
                  width: 300,
                  height: 300,
                ),
                Text(
                  fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    gerarFrase();
                  },
                  child: Text('Nova Frase'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
