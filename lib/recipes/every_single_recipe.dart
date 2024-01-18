import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HealthyRecipeWidget extends StatefulWidget {
  final String description;
  final String imagePath;
  final String appbar;
  final String serve;
  final String cookTime;
  final String ingredients;
  final String method;

  const HealthyRecipeWidget(
      {super.key,
      required this.description,
      required this.imagePath,
      required this.appbar,
      required this.serve,
      required this.cookTime,
      required this.ingredients,
      required this.method});

  @override
  State<HealthyRecipeWidget> createState() => _HealthyRecipeWidgetState();
}

class _HealthyRecipeWidgetState extends State<HealthyRecipeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 237, 244),
        appBar: AppBar(
          title: Text(widget.appbar),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Serve:'),
                        Text(widget.serve),
                        const Gap(90),
                        const Text('Cook: '),
                        Text(widget.cookTime),
                        const Gap(100),
                      ],
                    ),
                    const Gap(20),
                    Image(image: AssetImage(widget.imagePath)),
                    const Gap(20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('ingredients:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    const Gap(10),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.ingredients)),
                    const Gap(20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Method:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.method)),
                  ],
                ),
              ),
            )));
  }
}
