import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag2 extends StatelessWidget {
  const Pag2({super.key});

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
