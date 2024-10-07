import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag1 extends StatelessWidget {
  const Pag1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes en fila"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),
      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Image.asset("assets/images/img1.png"),
              Image.asset("assets/images/img2.png"),
              Image.asset("assets/images/img3.png"),
          ],),
        ],),
    );
  }
}
