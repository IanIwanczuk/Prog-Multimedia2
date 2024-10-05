import 'package:flutter/material.dart';
import 'MenuLateral.dart';

class Enlace1 extends StatelessWidget {
  const Enlace1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primera pantalla"),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text("Contenido"),
      ),
    );
  }
}
