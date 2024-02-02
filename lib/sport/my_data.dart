import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  late TextEditingController heightController;
  late TextEditingController weightController;

  @override
  void initState() {
    super.initState();
    heightController = TextEditingController();
    weightController = TextEditingController();
    loadSavedData();
  }

  Future<void> loadSavedData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      heightController.text = prefs.getString('height') ?? "";
      weightController.text = prefs.getString('weight') ?? "";
    });
  }

  Future<void> saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('height', heightController.text);
    prefs.setString('weight', weightController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('My data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(30),
                Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(74, 85, 162, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  child: const Text(
                    'Kg / Cm',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const Gap(80),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: heightController,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'height(Cm)'),
                    )),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'weight(Kg)'),
                  ),
                ),
                const Gap(80),
                ElevatedButton(
                    onPressed: () {
                      saveData();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('Height and Weight saved successfully!')));
                    },
                    child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
