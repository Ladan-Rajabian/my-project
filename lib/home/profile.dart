import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;
  late SharedPreferences _prefs;
  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    loadProfileImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const Gap(40),
              profileImage(context),
              const Gap(50),
              const Text('Hello User!\n welcome to HealthyWay!',
                  textAlign: TextAlign.center),
              const Gap(100),
              Container(
                padding: const EdgeInsets.all(15),
                height: 180,
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
    );
  }

  Widget profileImage(BuildContext context) {
    return Stack(
      children: [
        _image?.isNotEmpty ?? false
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
    saveProfileImage(img);
  }

  Future<void> saveProfileImage(Uint8List image) async {
    String base64Image = base64Encode(image);
    _prefs.setString('profile_image', base64Image);
  }

  Future<void> loadProfileImage() async {
    String? base64Image = _prefs.getString('profile_image');
    if (base64Image != null) {
      setState(() {
        _image = base64Decode(base64Image);
      });
    }
  }
}

Future<Uint8List> pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  return Uint8List(0);
}
