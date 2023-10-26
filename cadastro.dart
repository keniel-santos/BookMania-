// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro ({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  var nome = TextEditingController();
  var email_cadastro = TextEditingController();
  var cep = TextEditingController();
  var senha_cad = TextEditingController();
  var senha_cad_conf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Faça seu cadastro:'),
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
          mainAxisAlignment: MainAxisAlignment.center,//Trechos modificados
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
            SizedBox(height: 50,),
            TextField(
              controller: nome,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Nome:',
                hintText: 'Digite o seu nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: email_cadastro,
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
              controller: cep,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'CEP:',
                hintText: 'Digite o seu CEP',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: senha_cad,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Senha:',
                hintText: 'Digite sua senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            TextField(
              controller: senha_cad_conf,
              style: TextStyle(
                fontSize: 17
              ),
              decoration: InputDecoration(
                labelText: 'Confirmar senha:',
                hintText: 'Confirme sua senha',
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
                if((nome.text != '') &&
                   (email_cadastro.text != '') &&
                   (cep.text != '') &&
                   (senha_cad.text != '') &&
                   (senha_cad_conf != '') &&
                   (senha_cad.text == senha_cad_conf.text)) {
                  Navigator.pushNamed(context, 'menu');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Cadastro feito com sucesso! Bem-vindo(a)!'),
                    duration: Duration(seconds: 5),
                    )
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Dados incompatíveis ou incompletos! Preencha seus dados corretamente!'),
                      duration: Duration(seconds: 5),
                      )
                    );
                }
              },
              child: Text(
                'Cadastrar',
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),)
              )
          ]
        ),
      ),
    );
  }
}