import 'package:flutter/material.dart';
import 'screens.dart';

class Formularios extends StatefulWidget {
  const Formularios({super.key});


  @override
  FormulariosState createState() => FormulariosState();
}


class FormulariosState extends State<Formularios> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _textEditingControllers = [];
  final List<Widget> _widgets = [];
  final List<String> fieldNames = ["Nombres", "Apellidos"];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < fieldNames.length; i++) {
      String fieldName = fieldNames[i];
      TextEditingController textEditingController = TextEditingController(text: "");
      _textEditingControllers.add(textEditingController);
      _widgets.add(Padding(
        padding: const EdgeInsets.all(7.0),
        child: _createTextFormField(fieldName, textEditingController),
      ));
    }
  }

  Column _createPasswordField(TextEditingController controller1, TextEditingController controller2, TextEditingController controllerEmail) {
    return Column(children: [
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Este campo es obligatorio.';
          }
          if (value.length < 2 || value.length > 30) {
            return "Introduzca un valor entre 2 y 30 caracteres";
          }
          return null;
        },
        decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 154, 59),
                width: 2.0,
              ),
            ),
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 180, 102, 29),
            ),
            hintText: "Correo electrónico",
            labelText: 'Introduzca su correo'),
        controller: controllerEmail
      ),
      const SizedBox(height: 10,),
      TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        validator: (value) {
          if (value!.isEmpty) {
            return 'Este campo es obligatorio.';
          }
          if (value.length < 2 || value.length > 20) {
            return "Introduzca un valor entre 2 y 20 caracteres";
          }
          if (!(controller1.text == controller2.text)) {
            return "Las contraseñas deben de coincidir";
          }
          return null;
        },
        decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 154, 59),
                width: 2.0,
              ),
            ),
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 180, 102, 29),
            ),
            hintText: "Contraseña",
            labelText: 'Introduzca su contraseña'),
        controller: controller1
      ),
      const SizedBox(height: 10,),
      TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        validator: (value) {
          if (value!.isEmpty) {
            return 'Este campo es obligatorio.';
          }
          if (value.length < 2 || value.length > 20) {
            return "Introduzca un valor entre 2 y 20 caracteres";
          }
          if (!(controller1.text == controller2.text)) {
            return "Las contraseñas deben de coincidir";
          }
          return null;
        },
        decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 154, 59),
                width: 2.0,
              ),
            ),
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 180, 102, 29),
            ),
            hintText: "Repita la contraseña",
            labelText: 'Repita su contraseña'),
        controller: controller2
      ),
    ],);
  }

  TextFormField _createTextFormField(
      String fieldName, TextEditingController controller) {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Este campo es obligatorio.';
          }
          if (value.length < 2 || value.length > 30) {
            return "Introduzca un valor entre 2 y 30 caracteres";
          }
          return null;
        },
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 154, 59), 
                width: 2.0,
              ),
            ),
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 180, 102, 29),
            ),
            hintText: fieldName,
            labelText: 'Introduzca $fieldName'),
        controller: controller);
  }

  bool isSwitched = false;
  Widget _createSwitch() {
  return Switch(
      value: isSwitched,
      activeColor: Colors.amber,
      inactiveThumbColor: Colors.grey,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      });
  }

  bool termsOfService = false;
  Widget _createCheckBox() {
  return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              activeColor: Colors.amber,
              value: termsOfService,
              onChanged: (bool? value) {
                setState(() {
                  termsOfService = value ?? false;
                });
              },
            ),
            const Text("He leído y acepto los términos y condiciones"),
          ],
        );
  }



  String? _selectedOption = 'Videojuegos';
  final List<String> options = ["Videojuegos", "Pintura", "Manualidades", "Lectura", "Escritura", "Idiomas"];
  Widget _radioIntereses() {
    return Column(
        children: List.generate(options.length, (index) {
          return RadioListTile<String>(
            activeColor: Colors.amber,
            value: options[index],
            groupValue: _selectedOption,
            onChanged: (String? value) {
              setState(() {
                _selectedOption = value;
              });
            },
            title: Text(options[index]),
          );
        }),
      );
  }

  double sliderValue = 18.0;
  Widget _crearSlider() {
  return Slider(
      value: sliderValue,
      onChanged: (nuevoValor) {
        setState(() {
          sliderValue = (nuevoValor.toInt()).toDouble();
        });
      },
      inactiveColor: const Color.fromARGB(255, 123, 106, 0),
      activeColor: Colors.yellow,
      label: 'Edad',
      min: 18,
      max: 99);
  }


  final TextEditingController password1Controller = TextEditingController(text: "");
  final TextEditingController password2Controller = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController controllerFecha = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Creación de usuario'),
          backgroundColor: const Color.fromARGB(255, 255, 231, 135),
        ),
        drawer: const SideMenu(),
        backgroundColor: const Color.fromARGB(255, 255, 233, 192),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text('Datos principales', style: TextStyle(color: Colors.black, fontSize: 30),),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(children: _widgets),
                    ),


                    const Text('Fecha de nacimiento', style: TextStyle(color: Colors.black, fontSize: 30),),
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Este campo es obligatorio.';
                        }
                        if (value.length != 10) {
                          return "Introduzca una fecha valida";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 154, 59),
                              width: 2.0,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 180, 102, 29),
                          ),
                          hintText: "DD/MM/YYYY",
                          labelText: 'Introduzca su fecha de nacimiento'),
                      controller: controllerFecha
                    ),

                    const SizedBox(height: 20,),
                    const Text('Datos de la cuenta', style: TextStyle(color: Colors.black, fontSize: 30),),
                    _createPasswordField(password1Controller, password2Controller, emailController),
                    const SizedBox(height: 20,),
                    const Text('Hobby favorito', style: TextStyle(color: Colors.black, fontSize: 30),),
                    _radioIntereses(),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        _createSwitch(),
                        const Text('Discapacidad mayor al 33%', style: TextStyle(color: Colors.black, fontSize: 15),),
                      ],
                    ),
                    _createCheckBox(),
                    if (!termsOfService) 
                      const Text(
                      "Debe de aceptar los términos y condiciones",
                      style: TextStyle(color: Colors.red, fontSize: 10)),

                    const SizedBox(height: 20,),
                    const Text('Seleccione su edad', style: TextStyle(color: Colors.black, fontSize: 30),),
                    _crearSlider(),
                    Text("$sliderValue Años", style: const TextStyle(color: Colors.black, fontSize: 20),),


                    const SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        _formKey.currentState?.validate();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                      child: const Text('Enviar', style: TextStyle(color: Colors.black),),)
                  ],
                )
            )));
      
      
  }
}
