import 'package:flutter/material.dart';

class Pestanas extends StatefulWidget {
  const Pestanas({super.key});


  @override
  State<StatefulWidget> createState() {
    return TabState();
  }
}


class TabState extends State<Pestanas> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = [
      'assets/images/img9.png',
      'assets/images/img8.png',
      'assets/images/img7.png',
      'assets/images/img6.png',
      'assets/images/img9.png',
      'assets/images/img8.png',
      'assets/images/img4.png',
      'assets/images/img2.png',
      'assets/images/img7.png',
      'assets/images/img6.png',
    ];

    final List<String> imgList2 = [
      'assets/images/img3.png',
      'assets/images/img4.png',
      'assets/images/img7.png',
      'assets/images/img6.png',
      'assets/images/img2.png',
      'assets/images/img1.png',
      'assets/images/img7.png',
      'assets/images/img6.png',
    ];

    return SizedBox(
      width: 500,
      height: 314,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 50,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: TabBar(
                  labelColor: const Color.fromRGBO(255, 255, 255, 1),
                  unselectedLabelColor: Colors.white54,
                  indicatorColor: const Color(0xFF9A9A9A),
                  tabs: [
                    Image.asset("assets/images/grid.png", width: 30, height: 30),
                    Image.asset("assets/images/user.png", width: 30, height: 30),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      child: GridView.count(
                        crossAxisCount: 3,
                        children:  List.generate(imgList1.length, (index) {
                          return Image.asset(
                            imgList1[index],
                            fit: BoxFit.cover,
                          );}),
                      ),)),

                      Center(child: SizedBox(
                      height: 350,
                      child: GridView.count(
                        crossAxisCount: 3,
                        children:  List.generate(imgList2.length, (index) {
                          return Image.asset(
                            imgList2[index],
                            fit: BoxFit.cover,
                          );}),
                      ),))
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255)
        ),
      )
    );
  }
}
