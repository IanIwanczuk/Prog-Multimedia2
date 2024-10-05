import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/SideMenu.dart';

void main() => runApp(
 const MainApp()
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'drawerEjercicio',
        home: Scaffold(

          appBar: AppBar(
            title: const Text("Drawer Ejercicio 1"),
            backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
          ),

          drawer: const SideMenu(),

          body: ListView(
            children: [
              Text(
                "Ian Iwanczuk",
                style: GoogleFonts.protestStrike(
                  color: const Color.fromARGB(255, 255, 80, 80),
                  letterSpacing: 2,
                  fontSize: 50,
                ),
              ),
              Text(
                "https://github.com/IanIwanczuk/Prog-Multimedia2/tree/main/drawer_ejercicio_1",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color.fromARGB(255, 80, 49, 255),
                  fontSize: 20,
                ),
              ),
            ],),

          backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

        )

    );

  }

}
