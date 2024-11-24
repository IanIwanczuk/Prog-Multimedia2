import 'screens.dart';

class Pag6 extends StatelessWidget {
  const Pag6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filas y Columnas"),
        backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
      ),
      drawer: const SideMenu(),

      backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/meta.png", height: 80, width: 80,),
                  const Text("Meta",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
            ]
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/blogger.png", height: 80, width: 80,),
                  const Text("Blogger",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/medium.png", height: 80, width: 80,),
                  const Text("Medium",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
            ]
          ),

                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/american.png", height: 80, width: 80,),
                  const Text("American",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                  const Text("Express",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/postgre.png", height: 80, width: 80,),
                  const Text("Postgre",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/twitter.png", height: 80, width: 80,),
                  const Text("Twitter",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
            ]
          ),
        ],
      ),
    );
  }
}