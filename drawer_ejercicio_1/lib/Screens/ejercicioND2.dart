import 'screens.dart';

class NoDualDos extends StatefulWidget {
  const NoDualDos({super.key});

  @override
  State<NoDualDos> createState() => _NoDualDosState();
}

class _NoDualDosState extends State<NoDualDos> {
  final _formKeyIzq = GlobalKey<FormState>();
  final _formKeyIDer = GlobalKey<FormState>();
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

  TextEditingController nombreController = TextEditingController(text: "");
  Widget _formIzquierda() {
  return Form(
      key: _formKeyIzq,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Este campo es obligatorio.';
              }
              if (value.length != 30) {
                return "Introduzca un nombre valido";
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
            controller: nombreController
          ),
        ],
      )
    );
  }


  bool _isFirstForm = true;
  final TextEditingController _firstFormController = TextEditingController(text: "");
  final TextEditingController _secondFormController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Between Forms'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Switch to toggle form
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Use First Form'),
                Switch(
                  value: _isFirstForm,
                  onChanged: (bool value) {
                    setState(() {
                      _isFirstForm = value;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Conditional form display
            if (_isFirstForm)
              TextFormField(
                controller: _firstFormController,
                decoration: const InputDecoration(
                  labelText: 'First Form Field',
                ),
              )
            else
              TextFormField(
                controller: _secondFormController,
                decoration: const InputDecoration(
                  labelText: 'Second Form Field',
                ),
              ),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_isFirstForm) {
                  print('First Form Value: ${_firstFormController.text}');
                } else {
                  print('Second Form Value: ${_secondFormController.text}');
                }
              },
              child: const Text('Print Value'),
            ),
          ],
        ),
      ),
    );
  }
  
}