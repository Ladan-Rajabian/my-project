import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
              print('object');
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
      height: 200,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Text(
            'Choose profile photo',
            style: TextStyle(fontSize: 20),
          ),
          const Gap(20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.camera),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: const Text('Camera'),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.photo_album),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            child: const Text('Gallery'),
                          )
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
