import '../screens/screens.dart';

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
  static const String sieteymedio = '/Sieteymedio';
  static const String formulariovalid = '/FormularioValid';
  static const String formulariojuego = '/FormularioJuego';
  static const String nodualdos = '/NoDualDos';


  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeW(),
    pag1: (context) => const Pag1(),
    pag2: (context) => const Pag2(),
    pag3: (context) => const Pag3(),
    pag4: (context) => const Pag4(),
    pag5: (context) => const Pag5(),
    pag6: (context) => const Pag6(),
    contador: (context) => const Contador(),
    instagram: (context) => const Instagram(),
    minigame: (context) => const Minigame(),
    sieteymedio: (context) => const SieteyMedio(),
    formulariovalid: (context) => const Formularios(),
    formulariojuego: (context) => const Formulariojuego(),
    nodualdos: (context) => const NoDualDos(),
  };
}
