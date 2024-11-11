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
    'images/american.png',
    'images/blogger.png',
    'images/dropbox.png',
    'images/meta.png',
    'images/unity.png',
    'images/twitter.png',
    'images/postgre.png',
    'images/medium.png',
    'images/pinterest.png',
  ];

  late String randomImage;
  late double randomRight;
  late double randomBottom;
  late double screenWidth = MediaQuery.of(context).size.width - 100;
  late double screenHeight = MediaQuery.of(context).size.height - 100;
  late bool isTapped = false;
  int speed = 900;
  int points = 0;

  @override
  void initState() {
    super.initState();
    randomImage = getRandomImg();
    randomRight = 0;
    randomBottom = 0;
    timer();
  }

  void addPoints() {
    if (isTapped) {
      points++;
      isTapped = false;
    } else {
      points--;
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
    Timer.periodic(Duration(milliseconds: speed), (timer) {
      getRandomImg();
      randomImage = getRandomImg();
      randomRight = getRandomRight();
      randomBottom = getRandomBottom();
      addPoints();
      if (points % 5 == 0 && speed > 600) {
        speed -= 500;
      } else if (points % 5 == 0 && speed - 100 > 0) {
        speed -= 100;
      } else if (points % 5 == 0 && speed - 10 > 0) {
        speed -= 10;
      }
      setState(() {});
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
                        Text("Tienes $points punto(s)", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("Velocidad $speed ms", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],)
                  ],)
              ],
            ),
        )),
      
      
        backgroundColor: const Color.fromARGB(255, 255, 253, 215)
      );
  }
}