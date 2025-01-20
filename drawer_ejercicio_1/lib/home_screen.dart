import 'screens/screens.dart';
import 'routes/app_routes.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: const Color.fromRGBO(255, 250, 210, 1),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Color.fromARGB(255, 159, 104, 0),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 169, 112, 0)),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(  
            fontWeight: FontWeight.bold, color: Colors.blue),
        bodyMedium: TextStyle(color: Colors.black87),
      ),
    ),
    title: 'Rutas',
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.pag1,
    routes: AppRoutes.routes
  )
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: const Text("Inicio"),
            backgroundColor: const Color.fromARGB(255, 255, 226, 196),
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

        );

  }

}