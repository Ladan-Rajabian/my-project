import 'package:flutter/material.dart';
import 'package:flutter_untiteld/recipes/recipe.dart';
import 'package:flutter_untiteld/widgets/healthy_recipes_card.dart';
import 'package:gap/gap.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  set isFavorite(bool isFavorite) {}

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
        child: ListView.builder(
          itemCount: allRecipes.length,
          itemBuilder: ((context, index) {
            return Column(children: [
              const Gap(20),
              HealthyRecipesCard(
                imagePath: allRecipes[index].imagePath,
                description: allRecipes[index].description,
                appbar: allRecipes[index].appbar,
                cookTime: allRecipes[index].cookTime,
                ingredients: allRecipes[index].ingredients,
                method: allRecipes[index].method,
                serve: allRecipes[index].serve,
                index: index,
              ),
              const Gap(20),
            ]);
          }),
        ),
      ),
    );
  }
}


