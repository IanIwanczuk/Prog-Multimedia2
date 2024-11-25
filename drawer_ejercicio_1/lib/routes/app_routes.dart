import '../screens/screens.dart';
import '../home_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/Home';
  static const String pag1 = '/Pag1';
  static const String pag2 = '/Pag2';
  static const String pag3 = '/Pag3';
  static const String pag4 = '/Pag4';
  static const String pag5 = '/Pag5';
  static const String pag6 = '/Pag6';
  static const String contador = '/Contador';
  static const String instagram = '/Instagram';
  static const String minigame = '/Minigame';


  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const MainApp(),
    pag1: (context) => const Pag1(),
    pag2: (context) => const Pag2(),
    pag3: (context) => const Pag3(),
    pag4: (context) => const Pag4(),
    pag5: (context) => const Pag5(),
    pag6: (context) => const Pag6(),
    contador: (context) => const Contador(),
    instagram: (context) => const Instagram(),
    minigame: (context) => const Minigame(),
    '/alerts': (context) => const Dialogo(),
  };
}
