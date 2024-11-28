import 'dart:async';
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
  late double puntosCPU;
  late double puntosPlayer;
  late int totalConts;
  late bool isPlayerTurn;
  late int cardIndex;
  int contUno = 0;  int contDos = 0;  int contTres = 0;  int contCuatro = 0;  int contCinco = 0;
  int contSeis = 0;  int contSiete = 0;  int contDiez = 0;  int contOnce = 0;  int contDoce = 0;

  // Poner todas las imagenes de las cartas
  final List<String> cardList = [
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
    'assets/images/card1.png',
  ];

  final List<int> userCards = [];

  final List<int> cpuCards = [];

  @override
  void initState() {
    userCards.clear;
    cpuCards.clear;
    puntosCPU = 0;
    puntosPlayer = 0;
    totalConts = 0;
    isPlayerTurn = true;
    cardIndex = 0;
    super.initState();
  }

  int getCard() {
    Random random = Random();
    bool isInvalid = true;
    late int num;

    while (isInvalid) {
      num = random.nextInt(10) + 1;

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
      } else if (num == 10 && contDoce <= 4){
        num = 12;
        contDoce++;
        isInvalid = false;
      } 

    }
    totalConts++;

    return num;

  }

  void resetGame() {
    Navigator.popAndPushNamed(context, '/Sieteymedio');
    setState(() {});
  }

  double getPoints(List<int> cards) {
    double sum = 0;
    for (int card in cards) {
      if (card == 10 || card == 11 || card == 12) {
        sum += 0.5;
      } else {
        sum += card;
      }
    }
    return sum;
  }

  bool houseStops() {
    bool stops = false;
    if (puntosCPU >= 6) {
      stops = true;
    }
    return stops;
  }

  void endPlayerTurn() async {
    isPlayerTurn = false;

    while (!houseStops()) {
      cpuCards.add(getCard());
      puntosCPU = getPoints(cpuCards);
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 500));
    }

    double playerDiff;
    double cpuDiff;
    if (puntosPlayer > 7.5) {
      playerDiff = puntosPlayer - 7.5;
    } else {
      playerDiff = 7.5 - puntosPlayer;
    }

    if (puntosCPU > 7.5) {
      cpuDiff = puntosCPU - 7.5;
    } else {
      cpuDiff = 7.5 - puntosCPU;
    }
    
    if (playerDiff == cpuDiff) {
      print("Empate, gana la CPU (CPU: $cpuDiff PLAYER: $playerDiff)");
    } else if (playerDiff < cpuDiff) {
      print("Gana el jugador (CPU: $cpuDiff PLAYER: $playerDiff)");
    } else {
      print("Gana la CPU por puntos (CPU: $cpuDiff PLAYER: $playerDiff)");
    }

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
                      const Text("La casa", style: TextStyle(fontSize: 25)),
                      Row(
                        children: 
                        List.generate(cpuCards.length, (index) {
                          // return Image.asset(imagePath, width: 100, height: 15);
                          int num = cpuCards[index];
                          if () 
                          String imagePath = cardList[num - 1];

                          return Text(
                            "${cpuCards[index]} ", 
                            style: const TextStyle(fontSize: 20),
                          );
                        }),),
                      Text("Puntos: $puntosCPU"),
                      // Text("Uno: $contUno Dos: $contDos Tres: $contTres Cuatro: $contCuatro Cinco: $contCinco"),
                      // Text("Seis: $contSeis Siete: $contSiete Diez: $contDiez Once: $contOnce Doce: $contDoce"),
                    ],
                  )),
                Positioned(
                  bottom: 180,
                  right: 100,
                  child: Column(
                    children: [
                      const Text("Tú", style: TextStyle(fontSize: 25)),
                      Row(
                        children: List.generate(userCards.length, (index) {
                          return Text(
                            "${userCards[index]} ", 
                            style: const TextStyle(fontSize: 20),
                        );})
                      ),
                      Text("Puntos: $puntosPlayer"),
                    ],
                  ))
              ],
            ),
        ),




      floatingActionButton: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 209, 93),
              onPressed: () {
                if (totalConts != 50 && isPlayerTurn) {
                  userCards.add(getCard()); 
                  puntosPlayer = getPoints(userCards);
                }
                setState(() {});
              },
              heroTag: 'Hit',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 209, 93),
              onPressed: () { if (isPlayerTurn) {endPlayerTurn();}},
              heroTag: 'Stand',
              child: const Icon(Icons.back_hand),
            ),
            const SizedBox(width: 10),
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