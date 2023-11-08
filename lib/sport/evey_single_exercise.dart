import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HealthyExersiceWidget extends StatefulWidget {
  final String description;
  final String imagePath;
  const HealthyExersiceWidget(
      {super.key, required this.description, required this.imagePath});

  @override
  State<HealthyExersiceWidget> createState() => _HealthyExersiceWidgetState();
}

class _HealthyExersiceWidgetState extends State<HealthyExersiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              Text(
                widget.description,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage(widget.imagePath), fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
