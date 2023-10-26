// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto1/view/cadastro.dart';
import 'package:projeto1/view/esqueceu_senha.dart';
import 'package:projeto1/view/esqueceu_senha_2.dart';
import 'package:projeto1/view/inicial.dart';
import 'package:projeto1/view/livros_digitais.dart';
import 'package:projeto1/view/livros_fisicos.dart';
import 'package:projeto1/view/login.dart';
import 'package:projeto1/view/menu.dart';
import 'package:projeto1/view/sobre.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        // ignore: deprecated_member_use
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'inicial',
        routes: {
          'inicial':(context) => Inicial(),
          'login':(context) => Login(),
          'cadastro':(context) => Cadastro(),
          'esqueceu_senha':(context) => EsqueceuSenha(),
          'menu':(context) => Menu(),
          'sobre':(context) => Sobre(),
          'esqueceu_senha_2':(context) => EsqueceuSenha2(),
          'livros_fisicos':(context) => LivrosFisicos(),
          'livros_digitais':(context) => LivrosDigitais()
        },
      ),
    )
  );
}


