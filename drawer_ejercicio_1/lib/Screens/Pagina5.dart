import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SideMenu.dart';

class Pag5 extends StatelessWidget {
  const Pag5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes en fila", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
      ),
      drawer: const SideMenu(),
      body: Container(
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              offset: Offset(8, 8),
              blurRadius: 5,
            ),
          ],
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 57, 212),
              Color.fromARGB(255, 0, 255, 238),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.35, 0.90],
          ),),
        alignment: Alignment.centerLeft, //to align its child
        padding: const EdgeInsets.all(20),
          height: 160,
          child: Text("Cyberpunk", style: GoogleFonts.sixtyfour(
            fontSize: 40,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),),
        ),
      backgroundColor: const Color.fromARGB(255, 53, 53, 53)
    );
  }
}