import 'screens.dart';

class NoDualDos extends StatefulWidget {
  const NoDualDos({super.key});

  @override
  State<NoDualDos> createState() => _NoDualDosState();
}

class _NoDualDosState extends State<NoDualDos> {
  final List<String> _provinces = [
    'Álava', 'Albacete', 'Alicante', 'Almería', 'Asturias', 'Ávila', 'Badajoz',
    'Barcelona', 'Burgos', 'Cáceres', 'Cádiz', 'Cantabria', 'Castellón', 'Ceuta',
    'Ciudad Real', 'Córdoba', 'La Coruña', 'Cuenca', 'Girona', 'Granada', 'Guadalajara',
    'Gipuzkoa', 'Huelva', 'Huesca', 'Islas Baleares', 'Jaén', 'La Rioja', 'Las Palmas',
    'León', 'Lleida', 'Madrid', 'Málaga', 'Murcia', 'Navarra', 'Ourense', 'Palencia',
    'Pontevedra', 'Salamanca', 'Santa Cruz de Tenerife', 'Segovia', 'Sevilla', 'Soria',
    'Tarragona', 'Teruel', 'Toledo', 'Valencia', 'Valladolid', 'Vizcaya', 'Zamora', 'Zaragoza'
  ];
  final _formKeyIzq = GlobalKey<FormState>();
  final _formKeyDer = GlobalKey<FormState>();
  bool isSwitched = false;

  bool _isLeftForm = true;
  Widget _createSwitch() {
  return Switch(
      value: _isLeftForm,
      activeColor: Colors.amber,
      inactiveThumbColor: Colors.grey,
      onChanged: (value) {
        setState(() {
          _isLeftForm = value;
        });
      });
  }

  final TextEditingController _dateController = TextEditingController(text: "");
  String? _selectedProvince;
  bool _natacion = false;
  bool _futbol = false;
  bool _caminata = false;
  bool _basketball = false;
  bool _videojuegos = false;
  String? _selectedSex;
  Widget _formDerecha() {
  return Form(
      key: _formKeyDer,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Este campo es obligatorio.';
              }
              if (value.length != 10) {
                return "Introduzca una fecha valida";
              }
              final fechaRegex = RegExp(r'[0-9]{2}/[0-9]{2}/[0-9]{4}');
              if (!fechaRegex.hasMatch(value)) {
                return 'Por favor, ingrese una fecha valida';
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
            controller: _dateController
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: _selectedProvince,
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
              border: OutlineInputBorder(),
            ),
            items: _provinces.map((province) {
              return DropdownMenuItem<String>(
                value: province,
                child: Text(province),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedProvince = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, seleccione una ciudad de nacimiento';
              }
              return null;
            },
          ),

          CheckboxListTile(
            title: const Text('Natación'), 
            value: _natacion,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _natacion = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            title: const Text('Caminata'), 
            value: _caminata,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _caminata = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            title: const Text('Fútbol'), 
            value: _futbol,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _futbol = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            title: const Text('Basketball'), 
            value: _basketball,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _basketball = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            title: const Text('Videojuegos'), 
            value: _videojuegos,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _videojuegos = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),

          DropdownButtonFormField<String>(
              value: _selectedSex,
              decoration: const InputDecoration(
                labelText: 'Sexo',
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
              items: ["Hombre", "Mujer", "Prefiero no contestar"]
                  .map((number) => DropdownMenuItem<String>(
                        value: number,
                        child: Text(number),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedSex = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, seleccione su sexo';
                }
                return null;
              },
            ),
        ]
      )
    );
  }

  final TextEditingController _nameController = TextEditingController(text: "");
  final TextEditingController _emailController = TextEditingController(text: "");
  final TextEditingController _phoneController = TextEditingController(text: "");
  String? _selectedChildren1;
  String? _selectedChildren2;
  String? _selectedChildren3;
  bool _hasChildren = false;
  Widget _formIzquierda() {
  return Form(
      key: _formKeyIzq,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Nombre completo',
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
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese su nombre completo';
              }
              final nameRegex = RegExp(r'^[A-Za-z]+( [A-Za-z]+)*$');
              if (!nameRegex.hasMatch(value)) {
                return 'Por favor, ingrese un nombre valido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
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
              labelText: 'Correo electrónico',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese un correo';
              }
              final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
              if (!emailRegex.hasMatch(value)) {
                return 'Por favor, ingrese un correo válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          
          TextFormField(
            controller: _phoneController,
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
              labelText: 'Número de teléfono',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese un número de teléfono';
              }
              final phoneRegex = RegExp(r'^\d+$');
              if (!phoneRegex.hasMatch(value)) {
                return 'Por favor, ingrese un número de teléfono válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          CheckboxListTile(
            title: const Text('¿Tienes hijos?'), 
            value: _hasChildren,
            activeColor: Colors.amber,
            onChanged: (bool? value) {
              setState(() {
                _hasChildren = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const SizedBox(height: 16),

          if (_hasChildren)
            DropdownButtonFormField<String>(
              value: _selectedChildren1,
              decoration: const InputDecoration(
                labelText: 'Edad de su hijo 1',
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
              items: ['No tengo', '1', '2', '3']
                  .map((number) => DropdownMenuItem<String>(
                        value: number,
                        child: Text(number),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedChildren1 = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, seleccione la edad de su hijo 1';
                }
                return null;
              },
            ),
          const SizedBox(height: 10,),
          if (_hasChildren)
            DropdownButtonFormField<String>(
              value: _selectedChildren2,
              decoration: const InputDecoration(
                labelText: 'Edad de su hijo 2',
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
              items: ['No tengo', '1', '2', '3']
                  .map((number) => DropdownMenuItem<String>(
                        value: number,
                        child: Text(number),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedChildren2 = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, seleccione la edad de su hijo 2';
                }
                return null;
              },
            ),
          const SizedBox(height: 10,),
          if (_hasChildren)
            DropdownButtonFormField<String>(
              value: _selectedChildren3,
              decoration: const InputDecoration(
                labelText: 'Edad de su hijo 3',
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
              items: ['No tengo', '1', '2', '3']
                  .map((number) => DropdownMenuItem<String>(
                        value: number,
                        child: Text(number),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedChildren3 = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, seleccione la edad de su hijo 3';
                }
                return null;
              },
            ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio No Dual 2'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  _createSwitch(),

                  const SizedBox(height: 16),

                  if (!_isLeftForm)
                    _formIzquierda()
                  else
                    _formDerecha(),

                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (!_isLeftForm) {
                        _formKeyIzq.currentState?.validate();
                      } else {
                        _formKeyDer.currentState?.validate();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, 
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    child: const Text('Enviar', style: TextStyle(color: Colors.black),),)
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
  
}