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
                height: 150,
              ),
              Image.asset('assets/logo/logo.png'),
              const SizedBox(
                height: 220,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const Text(
                  'Sign in',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Color.fromRGBO(74, 85, 162, 1)),
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

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sign in'),
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
            TextField(
              obscureText: isObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscured = !isObscured;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                  border: const OutlineInputBorder(),
                  labelText: 'Password'),
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
