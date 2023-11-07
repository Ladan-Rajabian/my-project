import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Legs workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(40),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/legs1.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//exercise2

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Abs workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(35),
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/abs1.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Glute workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/glute3.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise4 extends StatefulWidget {
  const Exercise4({super.key});

  @override
  State<Exercise4> createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Full body',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/fullbody4.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise5 extends StatefulWidget {
  const Exercise5({super.key});

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Legs workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/legs5.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise6 extends StatefulWidget {
  const Exercise6({super.key});

  @override
  State<Exercise6> createState() => _Exercise6State();
}

class _Exercise6State extends State<Exercise6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Full body',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/fullbody6.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise7 extends StatefulWidget {
  const Exercise7({super.key});

  @override
  State<Exercise7> createState() => _Exercise7State();
}

class _Exercise7State extends State<Exercise7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Lower Abs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/lowerabs7.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise8 extends StatefulWidget {
  const Exercise8({super.key});

  @override
  State<Exercise8> createState() => _Exercise8State();
}

class _Exercise8State extends State<Exercise8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Full body',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/fullbody8.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise9 extends StatefulWidget {
  const Exercise9({super.key});

  @override
  State<Exercise9> createState() => _Exercise9State();
}

class _Exercise9State extends State<Exercise9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Glute workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/glute9.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise10 extends StatefulWidget {
  const Exercise10({super.key});

  @override
  State<Exercise10> createState() => _Exercise10State();
}

class _Exercise10State extends State<Exercise10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Lower Abs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/lower10.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise11 extends StatefulWidget {
  const Exercise11({super.key});

  @override
  State<Exercise11> createState() => _Exercise11State();
}

class _Exercise11State extends State<Exercise11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Legs workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/legs11.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise12 extends StatefulWidget {
  const Exercise12({super.key});

  @override
  State<Exercise12> createState() => _Exercise12State();
}

class _Exercise12State extends State<Exercise12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              const Text(
                'Full body',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('assets/exercises/full12.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Workout done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
