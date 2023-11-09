import 'package:flutter/material.dart';
import 'package:flutter_untiteld/widgets/healthy_recipes_card.dart';
import 'package:gap/gap.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              Column(children: [
                Gap(20),
                HealthyRecipesCard(
                    imagePath: 'assets/recipes/Broccoli soup.png',
                    description: 'Creamy Broccoli Soup',
                    appbar: 'Broccoli soup',
                    cookTime: '45min',
                    ingredients:
                        ' - 2 Tablespoon Butter \n - 1 Tablespoon Olive oil \n',
                    method: 'methode',
                    serve: 'serve'),
                Gap(20),
                HealthyRecipesCard(
                    imagePath: 'assets/recipes/Broccoli soup.png',
                    description: 'Test',
                    appbar: 'Test',
                    cookTime: 'Test',
                    ingredients: 'TEST',
                    method: 'TEST',
                    serve: 'Test'),
              ]),
            ],
          )),
    );
  }
}
