import 'screens.dart';

class HomeW extends StatelessWidget {
  const HomeW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: const Text("Inicio"),
            backgroundColor: const Color.fromARGB(255, 255, 226, 196),
          ),

          drawer: const SideMenu(),


          body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
                Text(
                  "Ian Iwanczuk",
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.protestStrike(
                  color: const Color.fromARGB(255, 255, 80, 80),
                  letterSpacing: 2,
                  fontSize: 50,),
                ),

                
                Text(
                  "https://github.com/IanIwanczuk/Prog-Multimedia2/tree/main/drawer_ejercicio_1",
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.spaceGrotesk(
                    color: const Color.fromARGB(255, 80, 49, 255),
                    fontSize: 13,),
                ),
            ],),
          ) 
        );
  }
}