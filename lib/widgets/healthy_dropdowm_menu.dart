import 'package:flutter/material.dart';

class HealthyDropdownMenu extends StatefulWidget {
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
  State<HealthyDropdownMenu> createState() => _HealthyDropdownMenuState();
}

class _HealthyDropdownMenuState extends State<HealthyDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      value: widget.list.contains(widget.selectedValue)
          ? widget.selectedValue
          : widget.list.first,
      onChanged: (String? value) {
        if (value != null) {
          setState(() {
            widget.onValueChanged(value);
          });
        }
      },
      items: widget.list.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
