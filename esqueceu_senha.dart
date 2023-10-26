// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

class EsqueceuSenha extends StatefulWidget {
  const EsqueceuSenha({super.key});

  @override
  State<EsqueceuSenha> createState() => _EsqueceuSenhaState();
}

class _EsqueceuSenhaState extends State<EsqueceuSenha> {

  var email_rec = TextEditingController();

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
            SizedBox(height: 70,),
            Text(
              'Informe seu e-mail para que possamos enviar um código de recuperação de senha',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 50,),
            TextField(
              controller: email_rec,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'E-mail:',
                hintText: 'Digite o seu e-mail',
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
              if(email_rec.text != '') {
                Navigator.pushNamed(context, 'esqueceu_senha_2');
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('E-mail inválido ou não inserido! Digite o seu e-mail'),
                  duration: Duration(seconds: 5),
                  ),
                );
              }
            },
            child: Text(
              'Enviar',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}