// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LivrosDigitais extends StatefulWidget {
  const LivrosDigitais({super.key});

  @override
  State<LivrosDigitais> createState() => _LivrosDigitaisState();
}

class _LivrosDigitaisState extends State<LivrosDigitais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Livros Digitais'),
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white
          ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue
      ),
    );
  }
}