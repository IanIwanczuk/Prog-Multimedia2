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
                  Image.asset("images/meta.png"),
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
                  Image.asset("images/blogger.png"),
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
                  Image.asset("images/medium.png"),
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
                  Image.asset("images/american.png"),
                  const Text("American Express",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/postgre.png"),
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
                  Image.asset("images/twitter.png"),
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