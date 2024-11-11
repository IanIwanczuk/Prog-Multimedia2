import 'screens/screens.dart';

void main() => runApp(
 MaterialApp(
    // theme: ThemeData(
    //   brightness: Brightness.light,
    //   primaryColor: Colors.black,
    //   scaffoldBackgroundColor: Colors.white,
    //   appBarTheme: const AppBarTheme(
    //     backgroundColor: Colors.black,
    //     foregroundColor: Colors.white,
    //     iconTheme: IconThemeData(color: Colors.white),
    //   ),
    //   textTheme: const TextTheme(
    //     titleLarge: TextStyle(
    //         fontWeight: FontWeight.bold, color: Colors.blue),
    //     bodyMedium: TextStyle(fontSize: 18, color: Colors.black87),
    //   ),
    // ),

    debugShowCheckedModeBanner: false,
    title: 'Home Screen',
    initialRoute: '/',
    routes: {
      '/': (context) => const MainApp(),
      '/Pag1': (context) => const Pag1(),
      '/Pag2': (context) => const Pag2(),
      '/Pag3': (context) => const Pag3(),
      '/Pag4': (context) => const Pag4(),
      '/Pag5': (context) => const Pag5(),
      '/Pag6': (context) => const Pag6(),
      '/Contador': (context) => const Contador(),
      '/Instagram': (context) => const Instagram(),
      '/Minigame': (context) => const Minigame(),
    },)
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: const Text("Inicio"),
            backgroundColor: const Color.fromRGBO(255, 201, 146, 1),
          ),

          drawer: const SideMenu(),


          body: Column(
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

          backgroundColor: const Color.fromRGBO(255, 250, 210, 1),

        );

  }

}