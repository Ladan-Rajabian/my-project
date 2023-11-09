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
                        '- 2 Tablespoon Butter \n - 1 Tablespoon Olive oil \n - 1 small onion, chopped \n - 2 garlic \n - 1 cube chicken stock \n - Broccoli florets, about 4 cups \n - 1/2 cup heavy cream, plus more for serving \n - 1/2 cup grated parmesan \n - sea salt and pepper, to taste \n -  Minced chives or flat parsley, for serving',
                    method:
                        '1.Heat the butter and olive oil in a large pot over medium heat. When the butter is melted and the oil is glistening, add the onions and cook, stirring, until softened, about 5 minutes. Add the garlic and cook, stirring, until fragrant, about 1 more minute. \n \n 2.Stir in the chicken stock and bouillon, then add the broccoli and increase the heat to high. Bring the mixture to a boil, then reduce the heat to low, cover and simmer, stirring occasionally, for 20 minutes, or until the broccoli is very tender. Turn off the heat. \n \n 3. Use an immersion blender to blend the soup directly in the pot until smooth. (Alternatively, transfer the soup to the base of a blender, let cool briefly, and blend until smooth. Then pour the soup back into the pot.) Stir in the cream, parmesan, and cook over medium heat until warmed through, 2 to 3 minutes. Taste and season with salt and pepper. \n \n 4. Serve the soup warm, topped with the chives or parsley and a swirl of cream.',
                    serve: '3'),
                Gap(20),
                HealthyRecipesCard(
                    imagePath: 'assets/recipes/curry salmon.png',
                    description: 'Curry Salmon',
                    appbar: 'Curry salmon',
                    cookTime: 'Test',
                    ingredients:
                        '- Curry Salmon : \n - 2 salmon filets \n - 1/2 teaspoon sea salt \n - 1 teaspoons brown sugar \n - 1/2 teaspoon red curry paste \n - 1/4 teaspoon garlic powder \n - 1 tablespoon olive oil \n - Curry Sauce : \n - 1 tablespoon olive oil \n - 1 teaspoons freshly grated ginger \n - 3 garlic cloves, minced \n - 1 tablespoon red curry paste \n - 1 cup coconut milk \n - 1 small onion \n - 1 red bell pepper \n - 1 green bell pepper \n - 4 green onions, light and dark green parts, thinly sliced \n - 2 tablespoon fresh lime juice \n - ¼ cup chopped fresh basil leaves, thinly sliced, plus more for garnish ',
                    method:
                        '1.Preheat the oven to 400°F with a rack in the center of the oven. \n 2.Line a rimmed baking sheet with foil. Place the salmon skin side down on foil. Pat dry with a paper towel. \n 3.Make the curry rub for the salmon: In a small bowl, mix together the sea salt, brown sugar, red curry paste, garlic powder and the oil until fully combined. Spread the curry paste mixture over the salmon and place it in the oven until it easily flakes with a fork, about 8-10 minutes. \n 4.Make the curry sauce: In a large skillet set over medium heat, add the oil until glistening. Add the grated ginger and minced garlic to the oil and cook until fragrant about 1 minute. Add the red curry paste and coconut milk and whisk until fully combined. \n 5.Add the onions and peppers. Allow to simmer until the onions and bell peppers are tender, about 15 minutes. Turn off the heat. \n 6.Add the lime juice and fresh basil to the pan and stir to combine. \n 7.Remove the salmon from the oven. Using a spatula, slide the cooked salmon away from the skin and transfer it to the curry sauce, spooning the sauce over the salmon. \n 8.Top the salmon curry with green onions, cilantro and extra basil if desired. ',
                    serve: '2'),
              ]),
            ],
          )),
    );
  }
}
