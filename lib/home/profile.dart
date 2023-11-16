import 'dart:io';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('assets/image/profilePic.png'),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                showDragHandle: true,
                context: context,
                builder: ((BuildContext context) {
                  return bottomSheet();
                }),
              );
            },
            child: const Icon(
              Icons.camera_alt,
              color: Color.fromARGB(255, 74, 85, 162),
              size: 28,
            ),
          ),
        )
      ],
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: const Column(
        children: [
          Text(
            'Choose profile photo',
            style: TextStyle(fontSize: 20),
          ),
          Gap(20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [MyPickerImage()],
            ),
          )
        ],
      ),
    );
  }
}

class MyPickerImage extends StatefulWidget {
  const MyPickerImage({super.key});

  @override
  State<MyPickerImage> createState() => _MyPickerImageState();
}

class _MyPickerImageState extends State<MyPickerImage> {
  String imagePath = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () async {
                  final image =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  setState(() {
                    imagePath = image?.path ?? "";
                  });
                },
                icon: const Icon(Icons.camera_alt)),
            IconButton(
              onPressed: () async {
                final image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                setState(() {
                  imagePath = image?.path ?? "";
                });
              },
              icon: const Icon(Icons.photo_album),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: imagePath.isNotEmpty
              ? Image.file(
                  (File(imagePath)),
                  height: 300.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                )
              : const Text('No Photo Selected yet'),
        ),
      ],
    );
  }
}
