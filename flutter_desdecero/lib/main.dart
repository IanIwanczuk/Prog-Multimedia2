import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ian Iwanczuk',
      home: Contador()
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _Contador();
}

class _Contador extends State<Contador> {
  int count = 0;

  void sumar() {
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Hola Mundo")),
        ),
        body: Center(
          child: Text(
            "Pulsaste el boton $count veces",
            style: const TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: sumar,
          child: const Text("+1"),
      ),
      )
    );
  }
}
