import 'package:flutter/material.dart';
import 'SideMenu.dart';

class Pag4 extends StatelessWidget {
  const Pag4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filas y Columnas"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),

      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/pinterest.png"),
                  const Text("Pinterest",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/unity.png"),
                  const Text("Unity",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
            ]
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/dropbox.png"),
                  const Text("Dropbox",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/acrobat.png"),
                  const Text("Acrobat",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
            ]
          ),
        ],
      ),
    );
  }
}