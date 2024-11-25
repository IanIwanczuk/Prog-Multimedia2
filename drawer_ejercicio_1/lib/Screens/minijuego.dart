import 'dart:async';
import 'dart:math';

import 'screens.dart';

class Minigame extends StatefulWidget {
  const Minigame({super.key});

  @override
  State<Minigame> createState() => _MinigameState();
}

class _MinigameState extends State<Minigame> {
  final List<String> imgList = [
    'assets/images/american.png',
    'assets/images/blogger.png',
    'assets/images/dropbox.png',
    'assets/images/meta.png',
    'assets/images/unity.png',
    'assets/images/twitter.png',
    'assets/images/postgre.png',
    'assets/images/medium.png',
    'assets/images/pinterest.png',
  ];

  late String randomImage;
  late double randomRight;
  late double randomBottom;
  late double screenWidth = MediaQuery.of(context).size.width - 100;
  late double screenHeight = MediaQuery.of(context).size.height - 100;
  late int reachedTen;
  late int reachedFifty;
  late int combo;
  late bool isTapped = false;
  int points = 0;

  @override
  void initState() {
    super.initState();
    randomImage = getRandomImg();
    randomRight = 0;
    randomBottom = 0;
    reachedTen = 0;
    reachedFifty = 0;
    combo = 0;
    timer();
  }

  void comenzarJuego() {
    reachedTen = 0;
    reachedFifty = 45;
    combo = 0;
  }

void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Bienvenido, preparate para jugar'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Comenzar'),
            ),
          ],
        );
      },
    );
  }

  void addPoints() {
    if (isTapped) {
      points++;
      reachedTen++;
      reachedFifty++;
      combo++;
      isTapped = false;
    } else {
      points--;
      reachedTen = 0;
      reachedFifty = 0;
      combo = 0;
    }
  }

  String getRandomImg() {
    Random random = Random();
    int randomNum = random.nextInt(imgList.length);
    return imgList[randomNum];
  }

  double getRandomRight() {
    Random random = Random();
    double randomNum = random.nextDouble() * screenWidth;
    if (randomNum > 120) {
      randomNum -= 120;
    }
    return randomNum;
  }

  double getRandomBottom() {
    Random random = Random();
    double randomNum = random.nextDouble() * screenHeight;
    if (randomNum > 120) {
      randomNum -= 120;
    }
    return randomNum;
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      getRandomImg();
      randomImage = getRandomImg();
      randomRight = getRandomRight();
      randomBottom = getRandomBottom();
      addPoints();
      setState(() {
        if (reachedTen == 10) {
        reachedTen = 0;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('¡Haz conseguido 10 puntos seguidos!'),
            duration: Duration(seconds: 3),
          ),
        );
        if (reachedFifty == 50) {
          reachedFifty = 0;
          showSimpleDialog(context);
      }}});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minijuego de imágenes"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),

      body: Center(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
                Container(color: const Color.fromARGB(255, 255, 249, 233)),
                Positioned(
                  bottom: randomBottom,
                  right: randomRight,
                  child: GestureDetector(
                    onTap: () {
                      isTapped = true;
                    },
                    child: Image.asset(randomImage),
                  ),),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column( 
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Tienes $points punto(s) $reachedFifty", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        (combo == 0)
                        ? Text("x$combo", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red)) 
                        : Text("x$combo", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green)),
                      ],)
                  ],)
              ],
            ),
        )),
      
      
        backgroundColor: const Color.fromARGB(255, 255, 253, 215)
      );
  }
}