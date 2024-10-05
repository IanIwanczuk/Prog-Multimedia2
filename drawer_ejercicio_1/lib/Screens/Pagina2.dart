import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag2 extends StatelessWidget {
  const Pag2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes en columna"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),

      body: Column(
        children:[
          Image.asset("assets/images/img3.png"),
          Image.asset("assets/images/img2.png"),
          Image.asset("assets/images/img1.png"),
        ],),

      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),
    );
  }
}
