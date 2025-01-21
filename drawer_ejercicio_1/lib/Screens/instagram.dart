import 'package:flutter/material.dart';
import '../screens/SideMenu.dart';
import '../components/profile.dart';
import '../components/highlights.dart';
import '../components/fixedbottom.dart';
import '../components/tabsInstagram.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});


  @override
  Widget build(BuildContext context) {
    late double screenWidth = MediaQuery.of(context).size.width;
    late double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 254, 252),

          appBar: AppBar(
            title: const Text("ian.iwanczuk03"),
            backgroundColor: const Color.fromARGB(255, 255, 252, 240),
          ),
          drawer: const SideMenu(),

          body: Center (
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileInfo(),

                  const Padding(padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
                    child: Text ("Ian Franco Iwanczuk", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),),

                  const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text ("Estudiante de DAM, Argentina", style: TextStyle(fontSize: 15),),),
                  
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 255, 255, 232),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                          child: const Text('Editar perfil', style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1))),
                          onPressed: () {},
                        ),
                  ),

                  const HighlightStories(),
                    
                  const Pestanas(),

                ],
              )
            )
          ),

          bottomNavigationBar: const FixedBottomBar(),
      );
  }
}