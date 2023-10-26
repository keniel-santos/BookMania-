// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class EsqueceuSenha3 extends StatefulWidget {
  const EsqueceuSenha3({super.key});

  @override
  State<EsqueceuSenha3> createState() => _EsqueceuSenha3State();
}

class _EsqueceuSenha3State extends State<EsqueceuSenha3> {

  var senha_nova = TextEditingController();
  var senha_nova_conf = TextEditingController();

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
              'Digite a nova senha e confirme:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 50,),
            TextField(
              controller: senha_nova,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite a nova senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            TextField(
              controller: senha_nova_conf,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Confirme a senha',
                hintText: 'Digite novamente a senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade600,
                foregroundColor: Colors.black87,
                minimumSize: Size(140, 40),
                textStyle: TextStyle(fontSize: 20)
              ),
              onPressed: () {
                if((senha_nova.text != '') &&
                   (senha_nova_conf.text != '') &&
                   (senha_nova == senha_nova_conf)) {
                  Navigator.pushNamed(context, 'menu');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Senha renovada com sucesso! Bem-vindo(a)!'),
                    duration: Duration(seconds: 5),
                    )
                  );
                }
              },
              child: Text(
                'Renovar senha',
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
                )
              )
            )
          ],
        )
      )
    );
  }
}