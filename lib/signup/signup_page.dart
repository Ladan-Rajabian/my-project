
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/home/home_page.dart';



class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 60,
          ),
        ]),
      ),
    );
  }
}