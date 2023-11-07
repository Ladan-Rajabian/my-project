import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('My data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(50),
              Container(
                height: 50,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(74, 85, 162, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                alignment: Alignment.center,
                child: const Text(
                  'Kg / Cm',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const Gap(80),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Height',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                    ),
                    Gap(190),
                    SizedBox(
                      width: 60,
                      child: TextField(style: TextStyle(fontSize: 20)),
                    ),
                    Text('Cm')
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Row(children: [
                  Text(
                    'Weight',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                  Gap(190),
                  SizedBox(
                    width: 60,
                    child: TextField(style: TextStyle(fontSize: 20)),
                  ),
                  Text('Kg')
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
