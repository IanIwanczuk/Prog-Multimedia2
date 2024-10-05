import 'package:flutter/material.dart';
import 'Pagina1.dart';
import 'Pagina2.dart';
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
                    image: NetworkImage(
                        "https://i.imgur.com/0gZM86Q.png"),
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
                "Página 1",
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
                "Página 2",
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
                "Página 3",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pag3()));
              },
            ),
          ),


        ],
      ),
    );
  }
}
