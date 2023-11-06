import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const Gap(40),
                //1.Legs
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            margin: const EdgeInsets.only(left: 80),
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/exercises/legs1.jpg'),
                                    fit: BoxFit.fill),
                                color: Colors.black)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 140),
                        child: const Text(
                          'Legs workout',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Gap(40),
                    //2.abs
                    InkWell(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromRGBO(120, 149, 203, 1)
                                      .withOpacity(0.60),
                                  const Color.fromRGBO(74, 85, 162, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 153,
                            width: 350,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 80),
                              child: const Text(
                                'Abs workout',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 160),
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/exercises/abs1.jpg'),
                                      fit: BoxFit.fill),
                                  color: Colors.black)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Gap(40),
                //3.glute
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            margin: const EdgeInsets.only(left: 80),
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/exercises/glute3.jpg'),
                                    fit: BoxFit.cover),
                                color: Colors.black)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 140),
                        child: const Text(
                          'Glute workout',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Gap(40),
                    //4.fullbody
                    InkWell(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromRGBO(120, 149, 203, 1)
                                      .withOpacity(0.60),
                                  const Color.fromRGBO(74, 85, 162, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 153,
                            width: 350,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 80),
                              child: const Text(
                                'Full body',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 160),
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/exercises/fullbody4.jpg'),
                                      fit: BoxFit.fill),
                                  color: Colors.black)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Gap(40),
            //5.Legs
            InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(120, 149, 203, 1)
                              .withOpacity(0.60),
                          const Color.fromRGBO(74, 85, 162, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 153,
                    width: 350,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/exercises/legs5.jpg'),
                                fit: BoxFit.fill),
                            color: Colors.black)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text(
                      'Legs workout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Gap(40),
                //6.fullbody
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: const Text(
                            'Full body',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/exercises/fullbody6.jpg'),
                                  fit: BoxFit.fill),
                              color: Colors.black)),
                    ],
                  ),
                )
              ],
            ),
            const Gap(40),
            //7.lower
            InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(120, 149, 203, 1)
                              .withOpacity(0.60),
                          const Color.fromRGBO(74, 85, 162, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 153,
                    width: 350,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/exercises/lowerabs7.jpg'),
                                fit: BoxFit.fill),
                            color: Colors.black)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text(
                      'Lower Abs',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Gap(40),
                //8.fullbody
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: const Text(
                            'Full body',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/exercises/fullbody8.jpg'),
                                  fit: BoxFit.fill),
                              color: Colors.black)),
                    ],
                  ),
                )
              ],
            ),
            const Gap(40),
            //9.glute
            InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(120, 149, 203, 1)
                              .withOpacity(0.60),
                          const Color.fromRGBO(74, 85, 162, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 153,
                    width: 350,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/exercises/glute9.jpg'),
                                fit: BoxFit.fill),
                            color: Colors.black)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text(
                      'Glute workout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Gap(40),
                //10.lower
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: const Text(
                            'Lower Abs',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/exercises/lower10.jpg'),
                                  fit: BoxFit.fill),
                              color: Colors.black)),
                    ],
                  ),
                )
              ],
            ),
            const Gap(40),
            //11.legs
            InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(120, 149, 203, 1)
                              .withOpacity(0.60),
                          const Color.fromRGBO(74, 85, 162, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 153,
                    width: 350,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/exercises/legs11.jpg'),
                                fit: BoxFit.fill),
                            color: Colors.black)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text(
                      'Legs workout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Gap(40),

                //12.fullbody
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromRGBO(120, 149, 203, 1)
                                  .withOpacity(0.60),
                              const Color.fromRGBO(74, 85, 162, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        height: 153,
                        width: 350,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: const Text(
                            'Full body',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/exercises/full12.jpg'),
                                  fit: BoxFit.fill),
                              color: Colors.black)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
