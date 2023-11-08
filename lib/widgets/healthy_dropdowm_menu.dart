import 'package:flutter/material.dart';

class HealthyDropdownMenu extends StatefulWidget {
  final List<String> list;
  const HealthyDropdownMenu({super.key, required this.list});

  @override
  State<HealthyDropdownMenu> createState() => _HealthyDropdownMenuState();
}

class _HealthyDropdownMenuState extends State<HealthyDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String dropdownValue = widget.list.first;
    return DropdownMenu<String>(
      initialSelection: widget.list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
