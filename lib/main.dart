import 'package:avalia/telas/tela_acoes.dart';
import 'package:avalia/telas/tela_bitcoin.dart';
import 'package:avalia/telas/tela_moeda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/telaMoeda',

      routes: {
        '/telaMoeda': (context) => const TelaMoeda(),
        '/telaAcoes':(context) => TelaAcoes(),
        '/telaBitcoin':(context) => TelaBitcoin(),
      },
    );
  }
}