import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //Correto
      appBar: AppBar(
        title: const Text('JokenPo'),
      ), //Correto
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

          Image.asset('images/padrao.png', width: 100),

          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
                'Você perdeu :(',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Image.asset('images/pedra.png', width: 100,),
              Image.asset('images/papel.png', width: 100,),
              Image.asset('images/tesoura.png', width: 100,),

            ]
          ),
        ],
      ),
    );
  }
}

