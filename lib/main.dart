import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var frases = [
    "Podemos julgar o coração de um homem pela forma como ele trata os animais.",
    "Lutar pelo amor é bom, mas alcançá-lo sem luta é melhor.",
    "É muito mais difícil matar um fantasma do que matar uma realidade.",
    "Viver é a coisa mais rara do mundo. A maioria das pessoas apenas existe.",
    "A força não provém da capacidade física. Provém de uma vontade indomável.",
    "Temos de nos tornar na mudança que queremos ver."
    "Somente a fé remove a desordem mental e devolve a clareza de espírito.",
    "Quem comete uma injustiça é sempre mais infeliz que o injustiçado."
  ];

  var fraseGerada = "Clique no botão para gerar uma frase";

  void gerarFrase(){
    var numeroAleatorio = Random().nextInt(frases.length);

    setState(() {
      fraseGerada = frases[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("imagens/logo.png"),
            Container(
              height: 100,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  fraseGerada,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                  ),
                )
            ),
            ElevatedButton(
              onPressed: gerarFrase,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              child: Text("Nova frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
