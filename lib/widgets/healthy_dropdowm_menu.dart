import 'package:flutter/material.dart';

class HealthyDropdownMenu extends StatelessWidget {
  final List<String> list;
  final String selectedValue;
  final Function(String) onValueChanged;
  const HealthyDropdownMenu(
      {Key? key,
      required this.list,
      required this.selectedValue,
      required this.onValueChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        value: selectedValue,
        onChanged: (String? value) {
          if (value != null) {
            onValueChanged(value);
          }
        },
        items: list.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
