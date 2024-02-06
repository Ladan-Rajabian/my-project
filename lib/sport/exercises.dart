import 'package:flutter/material.dart';

import 'package:flutter_untiteld/widgets/healthy_inkwell.dart';
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
          children: const [
            Column(
              children: [
                Gap(40),
                //1.Legs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0059.JPG',
                    description: 'Legs workout'),
                Gap(40),
                //2.abs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0071.JPG',
                    description: 'Upper body'),
                Gap(40),
                //3.Abs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0073.JPG',
                    description: 'Abs workout'),
                Gap(40),
                //4.fullbody
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0074.JPG',
                    description: 'Full body'),
                Gap(40),
                //5.Legs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0077.JPG',
                    description: 'Legs workout'),
                Gap(40),
                //6.fullbody
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0079.JPG',
                    description: 'Upper body'),
                Gap(40),
                //7.lowerabs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0076.JPG',
                    description: 'Abs workout'),
                Gap(40),
                //8.full body
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0078.JPG',
                    description: 'Full body'),
                Gap(40),
                //9.glute
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0080.JPG',
                    description: 'Glute workout'),
                Gap(40),
                //10lowerabs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0081.JPG',
                    description: 'Abs workout'),
                Gap(40),
                //11legs
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0082.JPG',
                    description: 'Full body'),
                Gap(40),
                //12fullbody
                HealthyCard(
                    imagePath: 'assets/workout/IMG_0083.JPG',
                    description: 'HIIT'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
