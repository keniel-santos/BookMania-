// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class EsqueceuSenha2 extends StatefulWidget {
  const EsqueceuSenha2({super.key});

  @override
  State<EsqueceuSenha2> createState() => _EsqueceuSenha2State();
}

class _EsqueceuSenha2State extends State<EsqueceuSenha2> {

  var cod_senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Recuperação de senha'),
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white
          ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding:EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_stories,
              size: 110,
              color: Colors.lightBlue,
            ),
            Text(
              'BookMania!',
              style: TextStyle(
                fontSize: 45,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 100,),
            Text(
              'Digite o código que foi enviado em seu e-mail:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify
            ),
            SizedBox(height: 50,),
            TextField(
              controller: cod_senha,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Código',
                hintText: 'Digite o código de recuperação de senha',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber.shade300,
              foregroundColor: Colors.black,
              minimumSize: Size(150, 50)
              ),
              onPressed: () {
                if (cod_senha.text != '') {
                  Navigator.pushNamed(context, 'esqueceu_senha_3');
                }
              }, 
              child: Text(
                'Enviar',
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
              )
            )
          ]
        )
      )
    );
  }
}