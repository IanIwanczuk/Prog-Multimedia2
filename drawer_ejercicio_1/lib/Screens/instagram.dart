import 'package:flutter/material.dart';
import '../screens/SideMenu.dart';
import '../components/profile.dart';
import '../components/highlights.dart';
import '../components/fixedbottom.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
    'images/img9.png',
    'images/img8.png',
    'images/img7.png',
    'images/img6.png',
    'images/img5.png',
    'images/img4.png',
    'images/img3.png',
    'images/img4.png',
    'images/img6.png',
    'images/img1.png',
    'images/img8.png',
    'images/img2.png',
    ];

    return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 254, 252),

          appBar: AppBar(
            title: const Text("ian.iwanczuk03"),
            backgroundColor: const Color.fromARGB(255, 255, 252, 240),
          ),
          drawer: const SideMenu(),

          body: SafeArea (
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileInfo(),

                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: Text ("Ian Franco Iwanczuk", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),),

                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                    child: Text ("Estudiante de DAM, Argentina", style: TextStyle(fontSize: 15),),),
                  
                  Row(
                    children: [
                      Expanded (
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 255, 232),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        child: const Text('Editar perfil', style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1))),
                        onPressed: () {},
                        ),),
                    ],),
                  
                  const HighlightStories(),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Column(
                      children: [
                      Image.asset("images/grid.png", width: 30, height: 30),
                    ],),
                    Column(children: [
                      Image.asset("images/user.png", width: 30, height: 30),
                    ],)
                  ],),

                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  
                  SizedBox(
                    width: 500,
                    height: 250,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children:  List.generate(imgList.length, (index) {
                        return Image.asset(
                          imgList[index],
                          fit: BoxFit.cover,
                        );}),

                    ),) 
                  ],
              )
            )
          ),

          bottomNavigationBar: const FixedBottomBar(),
      );
  }
}