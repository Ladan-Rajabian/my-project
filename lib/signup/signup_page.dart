import 'package:flutter/material.dart';
import 'package:flutter_untiteld/home/home_page.dart';
import 'package:flutter_untiteld/widgets/healthy_signup.dart';
import 'package:gap/gap.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Create an account'),
        backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(children: [
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Name'),
          ),
          const SizedBox(
            height: 25,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Email'),
          ),
          const SizedBox(
            height: 25,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeWidget()));
            },
            child: const Text(
              'Sign up',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            width: 430,
            height: 22,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 353,
                  child: Text(
                    '__________________OR__________________',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4A55A2),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(40),
          InkWell(
            child: const SignupButton(
                title: 'Continue with Apple', icon: Icons.apple),
            onTap: () {},
          ),
          const Gap(20),
          InkWell(
            child: const SignupButton(
              title: 'Continue with Google',
              icon: Icons.g_mobiledata,
            ),
            onTap: () {},
          ),
          const Gap(20),
          InkWell(
            child: const SignupButton(
                title: 'Continue with Facebook', icon: Icons.facebook),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}

