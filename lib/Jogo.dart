import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  List<String> _imagensCaminho = ['images/pedra.png', 'images/papel.png', 'images/tesoura.png'];
  List<String> _resultadoJogo = ['você ganhou :)', 'Empate!', 'Você perdeu :('];
  String _mensagemResultado = 'Escolha um objeto abaixo:';
  String _imagemAtual = 'images/padrao.png';

  int? _resultadoFinal() {

    int _randomNum = Random().nextInt(_imagensCaminho.length);

    setState(() {
      _imagemAtual = _imagensCaminho[_randomNum];
    });

    if (_randomNum == 0) {
      return 1;
    } else if (_randomNum == 1) {
      return 2;
    } else {
      return 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Correto
      appBar: AppBar(
        title: const Text('JokenPo'),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
                'Escolha do App:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Image.asset(_imagemAtual, width: 100),

           Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
                _mensagemResultado,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              GestureDetector(
                onTap: (){
                  int? objRetornado = _resultadoFinal();

                  switch (objRetornado) {
                    case 1:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[1];
                      });
                      break;
                    case 2:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[2];
                      });
                      break;
                    case 3:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[0];
                      });
                      break;
                  }

                  },
                child: Image.asset('images/pedra.png', width: 100,),
              ),

              GestureDetector(
                onTap: (){

                  int? objRetornado = _resultadoFinal();

                  switch (objRetornado) {
                    case 1:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[0];
                      });
                      break;
                    case 2:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[1];
                      });
                      break;
                    case 3:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[2];
                      });
                      break;
                  }

                  },
                child: Image.asset('images/papel.png', width: 100,),
              ),

              GestureDetector(
                onTap: (){

                  int? objRetornado = _resultadoFinal();

                  switch (objRetornado) {
                    case 1:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[2];
                      });
                      break;
                    case 2:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[0];
                      });
                      break;
                    case 3:
                      setState(() {
                        _mensagemResultado = _resultadoJogo[1];
                      });
                      break;
                  }

                  },
                child: Image.asset('images/tesoura.png', width: 100,),
              ),

            ]
          ),
        ],
      ),
    );
  }
}

