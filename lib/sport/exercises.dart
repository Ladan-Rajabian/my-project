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
                    imagePath: 'assets/exercises/abs1.jpg',
                    description: 'Abs workout'),
                Gap(40),
                //3.Abs
                HealthyCard(
                    imagePath: 'assets/exercises/glute3.jpg',
                    description: 'Glute workout'),
                Gap(40),
                //4.fullbody
                HealthyCard(
                    imagePath: 'assets/exercises/fullbody4.jpg',
                    description: 'Full body'),
                Gap(40),
                //5.Legs
                HealthyCard(
                    imagePath: 'assets/exercises/legs5.jpg',
                    description: 'Legs workout'),
                Gap(40),
                //6.fullbody
                HealthyCard(
                    imagePath: 'assets/exercises/fullbody6.jpg',
                    description: 'Full body'),
                Gap(40),
                //7.lowerabs
                HealthyCard(
                    imagePath: 'assets/exercises/lowerabs7.jpg',
                    description: 'Lower Abs'),
                Gap(40),
                //8.full body
                HealthyCard(
                    imagePath: 'assets/exercises/fullbody8.jpg',
                    description: 'Full body'),
                Gap(40),
                //9.glute
                HealthyCard(
                    imagePath: 'assets/exercises/glute9.jpg',
                    description: 'Glute workout'),
                Gap(40),
                //10lowerabs
                HealthyCard(
                    imagePath: 'assets/exercises/lower10.jpg',
                    description: 'Lower Abs'),
                Gap(40),
                //11legs
                HealthyCard(
                    imagePath: 'assets/exercises/legs11.jpg',
                    description: 'Legs workout'),
                Gap(40),
                //12fullbody
                HealthyCard(
                    imagePath: 'assets/exercises/full12.jpg',
                    description: 'Full body'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
