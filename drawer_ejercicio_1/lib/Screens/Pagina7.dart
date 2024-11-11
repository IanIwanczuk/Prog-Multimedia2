import 'screens.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _Contador();
}

class _Contador extends State<Contador> {
  int count = 0;

  void sumar() {
    setState(() {
      count++;
    });
  }
    void restar() {
    setState(() {
      count--;
    });
  }
    void reset() {
    setState(() {
      count = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Contador")),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
        ),
        drawer: const SideMenu(),
        backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                  Text(
                    "$count",
                    style: GoogleFonts.rajdhani(fontSize: 120),
                    ),
                  (count == 1 || count == -1)
                    ? const Text('Click', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),) // If condition is true
                    : const Text('Clicks', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), // If condition is false
                ],
              )],
            ),

            Row(
              children: [
                Expanded (
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 232),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    
                    ),
                  onPressed: restar,
                  child: const Text('Restar', style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1))),
                ),),
                Expanded (
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 232),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    
                    ),
                  onPressed: reset,
                  child: const Text('Reiniciar', style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1))),
                ),),
                Expanded (
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 232),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    
                    ),
                  onPressed: sumar,
                  child: const Text('Sumar', style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1))),
                ),),
            ],),  
          ],),
        ),
    );
  }
}
