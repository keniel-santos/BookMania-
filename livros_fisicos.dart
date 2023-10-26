// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LivrosFisicos extends StatefulWidget {
  const LivrosFisicos({super.key});

  @override
  State<LivrosFisicos> createState() => _LivrosFisicosState();
}

class _LivrosFisicosState extends State<LivrosFisicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Livros Físicos'),
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white
          ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        ),
    );
  }
}