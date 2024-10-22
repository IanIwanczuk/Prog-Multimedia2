import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
    'assets/images/img9.png',
    'assets/images/img8.png',
    'assets/images/img7.png',
    'assets/images/img6.png',
    'assets/images/img5.png',
    'assets/images/img4.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img6.png',
    'assets/images/img1.png',
    'assets/images/img8.png',
    'assets/images/img2.png',
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'drawerEjercicio',
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 254, 252),

          appBar: AppBar(
            title: const Text("ian.iwanczuk03"),
            backgroundColor: const Color.fromARGB(255, 255, 252, 240),
          ),

          body: SafeArea (
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/images/img1.png"),
                      ),
                      Column(children: [
                        Text ("1.026", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                        Text ("Publicaciones")
                        ],),
                      Column(children: [
                        Text ("859", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                        Text ("Seguidores")
                        ],),
                      Column(children: [
                        Text ("211", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                        Text ("Seguidos")
                        ],),
                  ],),

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
                  
                  Padding(padding: const EdgeInsets.all(10),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(children: [
                        Container(
                          width: 60.0,
                          height: 60.0, 
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            )
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add, 
                              color: Color.fromARGB(255, 18, 18, 18),
                              size: 30.0,
                            ),
                          ),
                        ),
                        const Text("Nuevo"),
                      ],)),
                      
                      Container(padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage("assets/images/img4.png"),
                        ), Text("Pilotando"),
                      ])),
                      Container(padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage("assets/images/img8.png"),
                        ), Text("Praga"),
                      ])),
                      Container(padding: const EdgeInsets.only(left: 5, right: 5),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage("assets/images/img5.png"),
                        ), Text("Arquitectura"),
                      ])),

                    ],)),
                  

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Column(
                        children: [
                        Image.asset("assets/images/grid.png", width: 30, height: 30),
                      ],),
                      Column(children: [
                        Image.asset("assets/images/user.png", width: 30, height: 30),
                      ],)
                    ],),

                    const Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                    
                    SizedBox(
                      width: 500,
                      height: 260,
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

          bottomNavigationBar: Container(
            color: const Color.fromARGB(255, 255, 255, 232),
            padding: const EdgeInsets.all(15.0), // Adds padding inside the footer
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/home.png", width: 30, height: 30),
                Image.asset("assets/images/search.png", width: 30, height: 30),
                Container(
                  width: 30.0,
                  height: 30.0, 
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    )
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add, 
                      color: Color.fromARGB(255, 18, 18, 18),
                      size: 25.0,
                    ),
                  )),
                  Image.asset("assets/images/heart.png", width: 30, height: 30),

                  Container(
                    width: 30.0,
                    height: 30.0, 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/img1.png"), // Your image here
                        fit: BoxFit.cover, // Ensures the image fills the container
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(255, 57, 204, 16),
                        width: 2.0,
                      )
                    ),
                  ),    
              ],)
            ),
        ),
      );
  }
}