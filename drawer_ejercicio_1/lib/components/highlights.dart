
import 'package:flutter/material.dart';

class HighlightStories extends StatelessWidget {
  const HighlightStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 75.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0, 
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
                          ],)
                      ),
                      Container(padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage("images/img4.png"),
                        ), 
                        Text("Pilotando"),
                      ])),
                      Container(padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage("images/img8.png"),
                        ), Text("Praga"),
                      ])),
                      Container(padding: const EdgeInsets.only(left: 5, right: 5),
                        child: const Column(children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage("images/img5.png"),
                        ), Text("Arquitectura"),
                      ])),
                    ])
                  );
  }
}