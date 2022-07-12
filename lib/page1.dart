import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bugralast/NavBar.dart';
import "widgets/products.dart";

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        drawer: NavBar(),
        appBar: AppBar(
          actions: [Icon(Icons.shopping_cart), Icon(Icons.mail)],
          centerTitle: true,
          elevation: 4.0,
          backgroundColor: Color.fromARGB(0, 19, 19, 20),
          title: Text(
            'KAYOZE SANAYİ',
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/78/03/dc/7803dc7d6de9f6e35a76ed62866d415b.jpg'),
            fit: BoxFit.cover,
          )),
          child: Products(),
        ),
      ),
    );
  }
}
