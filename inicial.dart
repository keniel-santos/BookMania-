// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_stories,
              size: 120,
              color: Colors.yellow,
            ),
            Text(
              'BookMania!',
                style: TextStyle(
                fontSize: 52,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade600,
                foregroundColor: Colors.black87,
                minimumSize: Size(140, 60)
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Text(
                'Login',
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                  foregroundColor: Colors.black87,
                  minimumSize: Size(140, 60)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'cadastro');
                },
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),  
          ]
        ),
      ),
    );
  }
}