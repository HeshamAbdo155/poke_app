import 'package:flutter/material.dart';
import 'package:poke_app/poke_screen.dart';

void main() {
  runApp(const MyPokeApp());
}

class MyPokeApp extends StatelessWidget {
  const MyPokeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poke App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const PokeScreen(),
    );
  }
}


