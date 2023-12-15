import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget {
  final String title;
  final icon;

  const SignupButton({super.key, required this.title, required this.icon});

  @override
  State<SignupButton> createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 217, 217, 217),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 300,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(right: 50, left: 60),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(alignment: Alignment.centerLeft, child: Icon(widget.icon)),
            const SizedBox(
              width: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                widget.title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
