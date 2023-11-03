import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Gap(40),
            SizedBox(
                height: 200,
                width: 370,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(160, 191, 244, 0.5),
                            Color.fromRGBO(197, 223, 248, 1)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 153,
                      width: 350,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/image/recipes.png')),
                              borderRadius: BorderRadius.circular(500),
                              color: Colors.black)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 90),
                      child: const Text(
                        'Recipes',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )),
            const Gap(10),
            SizedBox(
                height: 200,
                width: 370,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 158, 255, 0.75),
                            Color.fromRGBO(0, 231, 255, 0.5)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 153,
                      width: 350,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                'assets/image/waterReminder.png',
                              )),
                              borderRadius: BorderRadius.circular(600),
                              color: Colors.black)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 50),
                      child: const Text(
                        'Reminder to drink water',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )),
            const Gap(10),
            SizedBox(
                height: 200,
                width: 370,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(120, 149, 203, 1),
                            Color.fromRGBO(74, 85, 162, 1)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 153,
                      width: 350,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/image/sport.png')),
                              borderRadius: BorderRadius.circular(500),
                              color: Colors.black)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 90),
                      child: const Text(
                        'Sport exercises',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
