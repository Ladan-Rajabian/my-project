import 'package:flutter/material.dart';
import 'package:flutter_untiteld/sport/evey_single_exercise.dart';

//sport inkwell
class HealthyCard extends StatefulWidget {
  final String imagePath;
  final String description;


  const HealthyCard(
      {super.key, required this.imagePath, required this.description});
  @override
  State<HealthyCard> createState() => _HealthyCardState();
}

class _HealthyCardState extends State<HealthyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(120, 149, 203, 1).withOpacity(0.60),
                  const Color.fromRGBO(74, 85, 162, 1),
                ],
                begin: Alignment.topLeft,
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imagePath), fit: BoxFit.fill),
                    color: Colors.black)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 140),
            child: Text(
              widget.description,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HealthyExersiceWidget(
                  description: widget.description, imagePath: widget.imagePath),
            ));
      },
    );
  }
}

//water container card

class HealthyContainer extends StatefulWidget {
  final String text;

  const HealthyContainer({super.key, required this.text});
  @override
  State<HealthyContainer> createState() => _HealthyContainerState();
}

class _HealthyContainerState extends State<HealthyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Text(widget.text,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
        ));
  }
}
