import 'dart:math';
import 'screens.dart';

class SieteyMedio extends StatefulWidget {
  const SieteyMedio({super.key});

  @override
  State<SieteyMedio> createState() => _SieteyMedioState();
}

class _SieteyMedioState extends State<SieteyMedio> {
  late double screenWidth = MediaQuery.of(context).size.width - 100;
  late double screenHeight = MediaQuery.of(context).size.height - 250;
  late int puntosCPU;
  late int puntosPlayer;
  int contUno = 0;
  int contDos = 0;
  int contTres = 0;
  int contCuatro = 0;
  int contCinco = 0;
  int contSeis = 0;
  int contSiete = 0;
  int contDiez = 0;
  int contOnce = 0;
  int contDoce = 0;

  // Poner todas las imagenes de las cartas
  final List<String> cardList = [
    'assets/images/american.png',
    'assets/images/blogger.png',
    'assets/images/dropbox.png',
    'assets/images/meta.png',
  ];

  final List<int> userCards = [];

  final List<int> cpuCards = [];

  @override
  void initState() {
    puntosCPU = 0;
    puntosPlayer = 0;
    super.initState();
  }

  int getCard() {
    Random random = Random();
    bool isInvalid = true;
    late int num;

    while (isInvalid) {
      num = random.nextInt(10);

      if (num == 1 && contUno <= 4) {
        contUno++;
        isInvalid = false;
      } else if (num == 2 && contDos <= 4) {
        contDos++;
        isInvalid = false;
      } else if (num == 3 && contTres <= 4) {
        contTres++;
        isInvalid = false;
      } else if (num == 4 && contCuatro <= 4) {
        contCuatro++;
        isInvalid = false;
      } else if (num == 5 && contCinco <= 4) {
        contCinco++;
        isInvalid = false;
      } else if (num == 6 && contSeis <= 4) {
        contSeis++;
        isInvalid = false;
      } else if (num == 7 && contSiete <= 4) {
        contSiete++;
        isInvalid = false;
      } else if (num == 8 && contDiez <= 4) {
        num = 10;
        contDiez++;
        isInvalid = false;
      } else if (num == 9 && contOnce <= 4) {
        num = 11;
        contOnce++;
        isInvalid = false;
      } else if (num == 10 && contDoce <= 4) {
        num = 12;
        contDoce++;
        isInvalid = false;
      } 

    }

    return num;

  }

  void resetGame() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siete y Medio"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),


      body: Center(
        child: Stack(
            children: [
                Container(color: const Color.fromARGB(255, 255, 245, 154)),
                Positioned(
                  top: 150,
                  left: 100,
                  child: Column(
                    children: [
                      const Text("La casa"),
                      Row(
                        children: List.generate(userCards.length, (index) {
                          return Text(
                            "${userCards[index]} ", 
                            style: const TextStyle(fontSize: 20),
                        );}),),
                      const Text("Puntos: 0"),
                    ],
                  )),
                const Positioned(
                  bottom: 180,
                  right: 100,
                  child: Column(
                    children: [
                      Text("Tu"),
                      Row(
                        children: [
                          Text("Carta1 "),
                          Text("Carta2 "),
                          Text("Carta3"),
                        ],),
                      Text("Puntos: 0"),
                    ],
                  ))
              ],
            ),
        ),




      floatingActionButton: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min, // Only occupy the minimum space
          crossAxisAlignment: CrossAxisAlignment.end, // Align to the right
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 209, 93),
              onPressed: () {userCards.add(getCard()); setState(() {});},
              heroTag: 'Hit',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10), // Space between buttons
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 209, 93),
              onPressed: () {},
              heroTag: 'Stand',
              child: const Icon(Icons.back_hand),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 209, 93),
              onPressed: () {resetGame();},
              heroTag: 'Reset',
              child: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}