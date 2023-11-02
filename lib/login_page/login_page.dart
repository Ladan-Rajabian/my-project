import 'package:flutter/material.dart';
import 'package:flutter_untiteld/misc/components/bottom_nav.dart';
import 'package:flutter_untiteld/signup/signup_page.dart';



class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Healthy Way',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 540,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  side: const BorderSide(
                      width: 5, color: Color.fromRGBO(74, 85, 162, 1)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()));
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(74, 85, 162, 1),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

// Sign in Screen

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 190),
        child: Column(
          children: [
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
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Forget password',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigation()));
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}