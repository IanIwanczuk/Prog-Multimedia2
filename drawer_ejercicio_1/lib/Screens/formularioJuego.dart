import 'screens.dart';
import 'dart:math';

class Formulariojuego extends StatefulWidget {
  const Formulariojuego({super.key});

  @override
  State<Formulariojuego> createState() => _FormulariojuegoState();
}

class _FormulariojuegoState extends State<Formulariojuego> {
  Random random = Random();
  late double screenWidth = MediaQuery.of(context).size.width - 100;
  late double screenHeight = MediaQuery.of(context).size.height - 100;
  final formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  late int randomNum;

  @override
  void initState() {
    super.initState();
    randomNum = random.nextInt(99) + 1;
    print(randomNum);
  }

  void showMessage(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minijuego de formularios"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),

      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Adivina el numero',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 154, 59),
                      width: 2.0,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 180, 102, 29),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un entero valido';
                  }
                  return null;
                },
              ),

              
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();
                  print("Numero: ${textController.text}");
                  if (int.tryParse(textController.text) != null) {
                    int guess = int.parse(textController.text);
                    if (guess < randomNum) {
                      showMessage(context, "Más alto", "El número a adivinar es MAYOR");
                    } else if (guess > randomNum) {
                       showMessage(context, "Más bajo", "El número a adivinar es MENOR");
                    } else {
                       showMessage(context, "Victoria", "Has adivinado el número, era el número ${textController.text}");
                    }
                  } else {
                    showMessage(context, "Error", "'${textController.text}' no es un número válido.");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: const Text('Enviar'),
              ),
            ],
          ),
      ),
    );
  }
}