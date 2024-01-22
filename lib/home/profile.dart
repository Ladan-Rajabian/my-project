import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return {'Log out'}.map((String choice) {
              return PopupMenuItem(value: choice, child: Text(choice));
            }).toList();
          }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/image/profile backgroung.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.30), BlendMode.dstATop)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const Gap(40),
                profileImage(context),
                const Gap(50),
                const Text('Hello Sara!\n welcome to HealthyWay!',
                    textAlign: TextAlign.center),
                const Gap(100),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 160,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color.fromARGB(255, 10, 67, 114),
                      ),
                      color: const Color.fromARGB(255, 189, 215, 236)),
                  child: const Text(
                    'Are you ready to embark on a journey towards a healthier and more vibrant life? \n Say goodbye to the old and embrace the new with our innovative platform. \n At "HealthyWay", we are dedicated to helping you live your best life.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profileImage(BuildContext context) {
    return Stack(
      children: [
        _image != null
            ? CircleAvatar(
                radius: 80,
                backgroundImage: MemoryImage(_image!),
              )
            : const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/image/profilePic.png'),
              ),
        Positioned(
          bottom: -10,
          right: 5,
          child: IconButton(
            onPressed: () {
              selectImage();
            },
            icon: const Icon(Icons.add_a_photo),
          ),
        ),
      ],
    );
  }

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);

    setState(() {
      _image = img;
    });
  }
}

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image selected');
}
