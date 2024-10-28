import 'package:flutter/material.dart';
import 'Pagina1.dart';
import 'Pagina2.dart';
import 'Pagina3.dart';
import 'Pagina4.dart';
import 'Pagina5.dart';
import 'Pagina6.dart';
import 'Pagina7.dart';
import 'instagram.dart';
import '../main.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),
      child: ListView(

        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Ian Iwanczuk"),
            accountEmail: Text("ian.iwn2003@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("/images/img3.png"),
                    fit: BoxFit.cover)),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Inicio",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const MainApp()));
              },
            ),
          ),


          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Imagenes en fila",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag1()));
              },
            ),
          ),
          

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Imagenes en columna",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag2()));
              },
            ),
          ),


          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Muestra íconos",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag3()));
              },
            ),
          ),


          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Rows & Columns",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag4()));
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Desafio de Medium.com",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag5()));
              },
            ),
          ),

                    Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Rows & Columns 2",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag6()));
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Contador + y -",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Contador()));
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Instagram",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Instagram()));
              },
            ),
          ),


        ],
      ),
    );
  }
}
