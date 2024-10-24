
import 'package:flutter/material.dart';

class HighlightStories extends StatelessWidget {
  const HighlightStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
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
    
      ],));
  }
}