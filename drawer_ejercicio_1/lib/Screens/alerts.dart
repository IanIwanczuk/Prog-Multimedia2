import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ejemplo de AlertDialog')),
        body: const Center(
          child: Dialogo(),
        ),
      ),
    ));


class Dialogo extends StatefulWidget {
  const Dialogo({super.key});


  @override
  State<Dialogo> createState() => _DialogoState();
}


class _DialogoState extends State<Dialogo> {
  // Método que muestra el mensaje de alerta con AlertDialog
  void mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta'),
          content: const SingleChildScrollView(
            child: Text(
              'Este es un mensaje de alerta. Es bastate largo, muy largo, muy muy largo, para que desborde y haya que utilizar un widget como SingleChildScrollView para evitar que desborde . ¿Deseas continuar?',
              style: TextStyle(fontSize: 60),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }


// Método para mostrar el diáologo de alerta con SimpleDialog
  void mostrarSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('¿Te gusta Flutter?'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Por supuesto, es genial'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Para nada, es horrible'),
            ),
          ],
        );
      },
    );
  }


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _mostrarSimpleDialog(context);
      mostrarSimpleDialog(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        mostrarAlertDialog(context);
      },
      child: const Text('Mostrar AlertDialog'),
    );
  }
}
