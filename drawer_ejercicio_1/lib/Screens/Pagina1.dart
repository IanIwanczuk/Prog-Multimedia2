import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag1 extends StatelessWidget {
  const Pag1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Uno"),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text("Text"),
      ),
    );
  }
}
