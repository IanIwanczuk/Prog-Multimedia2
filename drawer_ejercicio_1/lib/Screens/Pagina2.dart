import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag3 extends StatelessWidget {
  const Pag3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Dos"),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text("Text"),
      ),
    );
  }
}
