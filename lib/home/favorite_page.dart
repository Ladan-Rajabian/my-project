import 'package:flutter/material.dart';
import 'package:flutter_untiteld/recipes/recipe.dart';
import 'package:flutter_untiteld/widgets/healthy_recipes_card.dart';
import 'package:gap/gap.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
          itemCount: allFavouriteRecipes.length,
          itemBuilder: ((context, index) {
            return Column(children: [
              const Gap(20),
              HealthyRecipesCard(
                imagePath: allFavouriteRecipes[index].imagePath,
                description: allFavouriteRecipes[index].description,
                appbar: allFavouriteRecipes[index].appbar,
                cookTime: allFavouriteRecipes[index].cookTime,
                ingredients: allFavouriteRecipes[index].ingredients,
                method: allFavouriteRecipes[index].method,
                serve: allFavouriteRecipes[index].serve,
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
