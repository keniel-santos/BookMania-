// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Menu'),
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
              SizedBox(height: 30,),
              Text(
                'Selecione o formato de livro que deseja ler:',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                  foregroundColor: Colors.black87,
                  minimumSize: Size(350, 170)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'livros_fisicos');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.menu_book,
                      size: 45
                    ),
                    Text(
                      'Livros Físicos',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black87,
                  minimumSize: Size(350, 170)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'livros_digitais');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.smartphone,
                      size: 45
                    ),
                    Text(
                      'Livros Digitais',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(140, 70)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'inicial');
                    }, 
                    child: Column(
                      children: [
                        Icon(
                          Icons.power_settings_new,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'Sair',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ),
                  SizedBox(width: 40,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(140, 70)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'sobre');
                    }, 
                    child: Column(
                      children: [
                        Icon(
                          Icons.info,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          'Sobre nós',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ),
                ],
              )
            ]
          ),
        )
      ),
    );
  }
}