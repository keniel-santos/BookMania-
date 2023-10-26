// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Sobre nós'),
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.auto_stories,
                size: 50,
                color: Colors.lightBlue,
              ),
              Text(
                'BookMania!',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Nosso projeto está sendo desenvolvido com o intuito de simplificar o acesso a obras literárias, sejam elas de natureza virtual ou física, abrangendo tanto títulos de domínio público quanto os disponíveis mediante pagamento. Além disso, oferecemos serviços de entrega para maior comodidade de nossos clientes.',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 60,),
              Text(
                'Desenvolvedores:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/Ana Júlia.jpg", height: 160,),
                      SizedBox(height: 20,),
                      Text(
                        'Ana Júlia M. Silva',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/Keniel.jpg", height: 160,),
                      SizedBox(height: 20,),
                      Text(
                        'Keniel R. da Silva Santos',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ) 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}