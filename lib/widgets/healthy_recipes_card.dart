import 'package:flutter/material.dart';
import 'package:flutter_untiteld/recipes/every_single_recipe.dart';
import 'package:flutter_untiteld/recipes/recipe_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HealthyRecipesCard extends StatefulWidget {
  final String imagePath;
  final String description;
//for recipe
  final String appbar;
  final String serve;
  final String cookTime;
  final String ingredients;
  final String method;

  final int index;

  const HealthyRecipesCard({
    super.key,
    required this.imagePath,
    required this.description,
    required this.appbar,
    required this.serve,
    required this.cookTime,
    required this.ingredients,
    required this.method,
    required this.index,
  });

  @override
  State<HealthyRecipesCard> createState() => _HealthyRecipesCardState();
}

class _HealthyRecipesCardState extends State<HealthyRecipesCard> {
  late bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    loadFavouriteStatus();
  }

  void loadFavouriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String key = 'favorite_recipe_${widget.index}';

    setState(() {
      isFavorite = prefs.getBool(key) ?? false;
    });
  }

  void toggleFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String key = 'favorite_recipe_${widget.index}';
    List<String> favoriteIndices =
        prefs.getStringList('favorite_recipe_indices') ?? [];

    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        favoriteIndices.add(widget.index.toString());
      } else {
        favoriteIndices.remove(widget.index.toString());
      }
      prefs.setBool(key, isFavorite);
      prefs.setStringList('favorite_recipe_indices', favoriteIndices);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(160, 191, 224, 1).withOpacity(0.60),
                  const Color.fromRGBO(197, 223, 248, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            height: 153,
            width: 340,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                margin: const EdgeInsets.only(left: 60),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imagePath), fit: BoxFit.fill),
                    color: Colors.black)),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            margin: const EdgeInsets.only(left: 140),
            child: Text(
              widget.description,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 45,
            child: IconButton(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                toggleFavoriteStatus();
              },
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HealthyRecipeWidget(
                    description: widget.description,
                    imagePath: widget.imagePath,
                    appbar: widget.appbar,
                    serve: widget.serve,
                    cookTime: widget.cookTime,
                    ingredients: widget.ingredients,
                    method: widget.method)));
      },
    );
  }
}
