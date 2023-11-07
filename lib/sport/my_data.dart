import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('My data'),
      ),
      body: Center(
        child: Column(
          children: [
           const Gap(50),
            Wrap(
              children: List<Widget>.generate(2, (int index) {
                return ChoiceChip(
                  label: const Text('Kg/Cm'),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                    });
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
