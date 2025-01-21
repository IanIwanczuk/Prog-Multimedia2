import 'screens.dart';


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
                    image: AssetImage("assets/images/img3.png"),
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
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
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
                Navigator.pushNamed(context, '/Pag1');
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
                Navigator.pushNamed(context, '/Pag2');
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
                Navigator.pushNamed(context, '/Pag3');
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
                Navigator.pushNamed(context, '/Pag4');
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
                Navigator.pushNamed(context, '/Pag5');
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
                Navigator.pushNamed(context, '/Pag6');
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
                Navigator.pushNamed(context, '/Contador');
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
                Navigator.pushNamed(context, '/Instagram');
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Minijuego de imágenes",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Minigame');
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Siete y medio",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Sieteymedio');
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Formulario y Validaciones",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/FormularioValid');
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Juego formulario",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/FormularioJuego');
              },
            ),
          ),

          Ink(
            color: const Color.fromARGB(255, 255, 253, 143),
            child: ListTile(
              title: const Text(
                "Ejercicio no dual 2",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/NoDualDos');
              },
            ),
          ),


        ],
      ),
    );
  }
}
