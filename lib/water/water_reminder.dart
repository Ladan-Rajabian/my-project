import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WaterReminder extends StatelessWidget {
  const WaterReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Water reminder'),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/image/waterBackground.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.30), BlendMode.dstATop)),
            ),
            child: Center(
              child: Column(children: [
                const Gap(120),
                InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 158, 255, 1),
                            Color.fromRGBO(0, 231, 255, 0.25)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 153,
                      width: 350,
                      child: Container(
                        margin: const EdgeInsets.only(left: 60, top: 60),
                        child: const Text('Setting',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800)),
                      )),
                ),
                const Gap(120),
                InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 158, 255, 1),
                            Color.fromRGBO(0, 231, 255, 0.25)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 153,
                      width: 350,
                      child: Container(
                        margin: const EdgeInsets.only(left: 60, top: 60),
                        child: const Text('Overview',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800)),
                      )),
                ),
              ]),
            )));
  }
}
