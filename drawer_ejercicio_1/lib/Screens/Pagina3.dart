import 'screens.dart';

class Pag3 extends StatelessWidget {
  const Pag3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Muestra de íconos"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),
      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          	children: <Widget>[
            	Icon(
              	Icons.ac_unit_sharp,
              	color: Color.fromARGB(255, 81, 255, 86),
        	      	size: 50.0,
            	),
            	Icon(
              	Icons.system_security_update,
              	color: Color.fromARGB(255, 30, 45, 255),
              	size: 50.0,
            	),
            	Icon(
              	Icons.gamepad,
         	   	  color: Color.fromARGB(255, 255, 216, 20),
              	size: 50.0,
            	),
              Icon(
              	Icons.wysiwyg_outlined,
         	   	  color: Color.fromARGB(255, 255, 20, 20),
              	size: 50.0,
            	),
              Icon(
              	Icons.two_mp_rounded,
         	   	  color: Color.fromARGB(255, 0, 251, 255),
              	size: 50.0,
            	),
          	],
        	),
        ],),
    );
  }
}
