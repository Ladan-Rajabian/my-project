import 'package:flutter/material.dart';

import 'package:flutter_untiteld/recipes/recipe_model.dart';
import 'package:flutter_untiteld/widgets/healthy_recipes_card.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Recipe> favoriteRecipes = [];

  @override
  void initState() {
    super.initState();
    loadFavoriteRecipes();
  }

  void loadFavoriteRecipes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteIndices =
        prefs.getStringList('favorite_recipe_indices');
    if (favoriteIndices != null) {
      setState(() {
        favoriteRecipes = favoriteIndices
            .map((index) => allRecipes[int.parse(index)])
            .toList();
      });
    }
  }

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
          itemCount: favoriteRecipes.length,
          itemBuilder: ((context, index) {
            return Column(children: [
              const Gap(20),
              HealthyRecipesCard(
                imagePath: favoriteRecipes[index].imagePath,
                description: favoriteRecipes[index].description,
                appbar: favoriteRecipes[index].appbar,
                cookTime: favoriteRecipes[index].cookTime,
                ingredients: favoriteRecipes[index].ingredients,
                method: favoriteRecipes[index].method,
                serve: favoriteRecipes[index].serve,
                index: allRecipes.indexOf(favoriteRecipes[index]),
              ),
              const Gap(20),
            ]);
          }),
        ),
      ),
    );
  }
}
