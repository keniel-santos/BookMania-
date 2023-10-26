// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var email_login = TextEditingController();
  var senha_login = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Faça seu login:'),
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
            SizedBox(height: 75,),
            TextField(
              controller: email_login,
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
            TextField(
              controller: senha_login,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Senha:',
                hintText: 'Digite a sua senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber.shade300,
              foregroundColor: Colors.black,
              minimumSize: Size(150, 50)
            ),
            onPressed: () {
              if(email_login.text != '' && senha_login.text != '') {
                Navigator.pushNamed(context, 'menu');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Bem-vindo(a)!'),
                  duration: Duration(seconds: 5),
                  )
                );
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Dados incompatíveis ou incompletos! Preencha seus dados corretamente!'),
                  duration: Duration(seconds: 5),
                  )
                );
              }
            },
            child: Text(
              'Entrar',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20
                  ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'esqueceu_senha');
              },
               child: Text('Esqueceu a senha?'),
               )
            ]
          ),
        ),
    );
  }
}