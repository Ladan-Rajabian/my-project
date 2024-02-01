import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/widgets/bottom_nav.dart';
import 'package:flutter_untiteld/login_page/signup/signup_page.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  Future<void> logLoginEvent() async {
    await analytics.logEvent(
      name: 'login',
      parameters: {'login_method': 'email'},
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              SizedBox(
                height: size.height * 0.030,
              ),
              const Text(
                'Healthy Way',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: size.height * 0.150,
              ),
              Image.asset('assets/logo/logo.png'),
              const SizedBox(
                height: 220,
              ),
              ElevatedButton(
                onPressed: () async {
                  logLoginEvent().then((value) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn())));
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
                  Navigator.pushReplacement(
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(
                height: size.height * 0.30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.pushReplacement(
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
      ),
    );
  }
}
