import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HealthyRow extends StatefulWidget {
  final String name;
  final String abbreviation;

  const HealthyRow({super.key, required this.name, required this.abbreviation});

  @override
  State<HealthyRow> createState() => _HealthyRowState();
}

class _HealthyRowState extends State<HealthyRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          widget.name,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: size.width * 0.41,
        ),
        const SizedBox(
          width: 60,
          child: TextField(style: TextStyle(fontSize: 20)),
        ),
        Text(widget.abbreviation),
      ],
    );
  }
}
