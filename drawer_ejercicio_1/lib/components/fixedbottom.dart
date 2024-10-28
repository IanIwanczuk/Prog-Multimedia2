import 'package:flutter/material.dart';

class FixedBottomBar extends StatelessWidget {
  const FixedBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 232),
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("images/home.png", width: 30, height: 30),
          Image.asset("images/search.png", width: 30, height: 30),
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
            Image.asset("images/heart.png", width: 30, height: 30),
    
            Container(
              width: 30.0,
              height: 30.0, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("images/img1.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: const Color.fromARGB(255, 57, 204, 16),
                  width: 2.0,
                )
              ),
            ),    
        ],)
      );
  }
}