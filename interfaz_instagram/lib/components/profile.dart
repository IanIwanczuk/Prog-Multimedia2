import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row( 
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
    ],);
  }
}