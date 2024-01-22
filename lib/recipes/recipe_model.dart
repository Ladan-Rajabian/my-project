class Recipe {
  final String description;
  final String imagePath;
  final String appbar;
  final String serve;
  final String cookTime;
  final String ingredients;
  final String method;

  const Recipe({
    required this.description,
    required this.imagePath,
    required this.appbar,
    required this.serve,
    required this.cookTime,
    required this.ingredients,
    required this.method,
  });
}

List<Recipe> allRecipes = const [
  Recipe(
    description: 'Creamy Broccoli Soup',
    imagePath: 'assets/recipes/Broccoli soup.png',
    appbar: 'Broccoli soup',
    serve: '3',
    cookTime: '45 min',
    ingredients:
        '- 2 Tablespoon Butter \n - 1 Tablespoon Olive oil \n - 1 small onion, chopped \n - 2 garlic \n - 1 cube chicken stock \n - Broccoli florets, about 4 cups \n - 1/2 cup heavy cream, plus more for serving \n - 1/2 cup grated parmesan \n - sea salt and pepper, to taste \n -  Minced chives or flat parsley, for serving',
    method:
        '1.Heat the butter and olive oil in a large pot over medium heat. When the butter is melted and the oil is glistening, add the onions and cook, stirring, until softened, about 5 minutes. Add the garlic and cook, stirring, until fragrant, about 1 more minute. \n \n 2.Stir in the chicken stock and bouillon, then add the broccoli and increase the heat to high. Bring the mixture to a boil, then reduce the heat to low, cover and simmer, stirring occasionally, for 20 minutes, or until the broccoli is very tender. Turn off the heat. \n \n 3. Use an immersion blender to blend the soup directly in the pot until smooth. (Alternatively, transfer the soup to the base of a blender, let cool briefly, and blend until smooth. Then pour the soup back into the pot.) Stir in the cream, parmesan, and cook over medium heat until warmed through, 2 to 3 minutes. Taste and season with salt and pepper. \n \n 4. Serve the soup warm, topped with the chives or parsley and a swirl of cream.',
  ),
  Recipe(
    description: 'Chia pudding',
    imagePath: 'assets/recipes/chiapudding.jpg',
    appbar: 'Chia pudding',
    serve: '1',
    cookTime: "10 min",
    ingredients:
        ' - 1/4 cup chia seeds \n - 1 cup milk (dairy or plant-based like almond, coconut, soy, etc.) \n - Sweetener to taste (honey, maple syrup, agave, etc.) \n - Optional flavorings: vanilla extract, cocoa powder, cinnamon, fruit puree, etc.',
    method:
        ' 1.In a bowl or container, combine the chia seeds and milk. Stir well to evenly distribute the chia seeds. You can also add sweetener and any optional flavourings at this stage. \n \n 2.Cover the bowl or container and place it in the refrigerator. \n \n 3.After about 15 minutes, take the mixture out and give it a good stir to prevent clumping. This step is important to ensure even distribution of chia seeds and prevent them from sticking together. \n \n 4.Return the mixture to the refrigerator and let it sit for at least 2-3 hours, or overnight. The chia seeds will absorb the liquid and create a pudding-like consistency. \n \n 5.Once the chia pudding has reached your desired thickness, give it another stir. If its too thick, you can add a little more milk to achieve the desired consistency. \n \n 6.Serve the chia pudding in individual bowls or glasses. You can top it with fresh fruits, nuts, seeds, granola, or any other toppings you prefer. \n \n - Chilling time: The chia pudding needs at least 2-3 hours to thicken in the refrigerator. Overnight is ideal for the best texture and flavour. ',
  ),
  Recipe(
      description: 'Curry Salmon',
      imagePath: 'assets/recipes/curry salmon.png',
      appbar: 'Curry salmon',
      serve: '2',
      cookTime: '45 min',
      ingredients:
          '- Curry Salmon : \n - 2 salmon filets \n - 1/2 teaspoon sea salt \n - 1 teaspoons brown sugar \n - 1/2 teaspoon red curry paste \n - 1/4 teaspoon garlic powder \n - 1 tablespoon olive oil \n - Curry Sauce : \n - 1 tablespoon olive oil \n - 1 teaspoons freshly grated ginger \n - 3 garlic cloves, minced \n - 1 tablespoon red curry paste \n - 1 cup coconut milk \n - 1 small onion \n - 1 red bell pepper \n - 1 green bell pepper \n - 4 green onions, light and dark green parts, thinly sliced \n - 2 tablespoon fresh lime juice \n - ¼ cup chopped fresh basil leaves, thinly sliced, plus more for garnish ',
      method:
          '1.Preheat the oven to 400°F with a rack in the center of the oven. \n \n 2.Line a rimmed baking sheet with foil. Place the salmon skin side down on foil. Pat dry with a paper towel. \n \n 3.Make the curry rub for the salmon: In a small bowl, mix together the sea salt, brown sugar, red curry paste, garlic powder and the oil until fully combined. Spread the curry paste mixture over the salmon and place it in the oven until it easily flakes with a fork, about 8-10 minutes. \n \n 4.Make the curry sauce: In a large skillet set over medium heat, add the oil until glistening. Add the grated ginger and minced garlic to the oil and cook until fragrant about 1 minute. Add the red curry paste and coconut milk and whisk until fully combined. \n \n 5.Add the onions and peppers. Allow to simmer until the onions and bell peppers are tender, about 15 minutes. Turn off the heat. \n \n 6.Add the lime juice and fresh basil to the pan and stir to combine. \n \n 7.Remove the salmon from the oven. Using a spatula, slide the cooked salmon away from the skin and transfer it to the curry sauce, spooning the sauce over the salmon. \n \n 8.Top the salmon curry with green onions, cilantro and extra basil if desired. '),
  Recipe(
      description: 'Avocado Wrap',
      imagePath: 'assets/recipes/avocadoWrap.jpg',
      appbar: 'Avocado Wrap',
      serve: '1',
      cookTime: '10 min',
      ingredients:
          ' - 1/2 Avocado \n - 1 Tomato \n - 1 Tablespoon Olive oil \n - Salt and pepper ',
      method:
          ' 1.Spread mashed avocado on a tortilla. \n \n 2.Add sliced tomatoes, lettuce, and any desired veggies. \n \n 3.Drizzle with olive oil and season with salt and pepper. \n \n 4.Roll up the tortilla and enjoy.'),
  Recipe(
      description: 'Grill chicken',
      imagePath: 'assets/recipes/grillChicken.png',
      appbar: 'Grill chicken',
      serve: '4',
      cookTime: '20 min',
      ingredients:
          ' - 1/3 Cup olive oil \n - 3 Garlic cloves, minced \n - 3/4 Teaspoon dried thyme \n - 3/4 Teaspoon dried basil \n - 1 Teaspoon sea salt \n - 1/2 Teaspoon freshly cracked black pepper \n - 1 Teaspoon lemon zest (from 1 lemon) \n - 1 Teaspoon Dijon mustard \n - 1 Tablespoon brown sugar \n - 4 Small boneless, skinless chicken breasts',
      method:
          ' 1.In a medium bowl or plastic zip-top bag, combine the olive oil, garlic cloves, thyme, basil, salt, pepper, lemon zest, mustard, and brown sugar. \n \n 2.Add the chicken to the marinade and toss to coat the chicken well. Let marinate in the refrigerator for at least 1 hour or up to overnight. \n \n 3.Preheat the grill on high. Place the chicken on the grill, then reduce the heat to medium-high. Cover the grill and cook for 3-4 minutes, or until char marks are present. Flip and cook, turning occasionally, until the internal temperature registers 165°F on an instant read thermometer, 7-8 minutes more \n \n 4.Transfer the chicken to a serving platter and let rest for 5 minutes before serving.'),
  Recipe(
      description: 'Cucumber salad',
      imagePath: 'assets/recipes/cucumberSalad.jpg',
      appbar: 'Cucumber salad',
      serve: '4',
      cookTime: '15 min',
      ingredients:
          ' - 1 large cucumber, thinly sliced \n - 1 can chickpeas, drained and rinsed \n - 1/4 red onion, thinly sliced \n - ¼ cup chopped flat-leaf parsley \n - ¼ cup chopped fresh mint leaves \n - 2 tablespoons fresh dill, chopped',
      method:
          ' 1.In a large bowl, combine the cucumber, chickpeas, onion, parsley, mint, and dill. \n \n Note: You can also add feta cheese'),
  Recipe(
      description: 'Toast egg',
      imagePath: 'assets/recipes/toastEgg.png',
      appbar: 'Toast egg',
      serve: '2',
      cookTime: '45 min',
      ingredients:
          ' - 2 Chicken breasts or thighs \n - Assorted vegetables (e.g., carrots, broccoli, bell peppers) \n - Olive oil \n - Salt and pepper - \n Seasonings (such as garlic powder, paprika, thyme) \n ',
      method:
          ' 1.Preheat the oven to 400°F (200°C). \n \n 2.Place chicken and chopped vegetables on a baking sheet. \n \n  3.Drizzle with olive oil and sprinkle with salt, pepper, and your choice of seasonings. \n \n  4.Toss everything together to coat evenly. \n \n 5.Bake for about 30-35 minutes'),
  Recipe(
      description: 'Honey mustard chicken',
      imagePath: 'assets/recipes/honeymustard.png',
      appbar: 'Honey mustard chicken',
      serve: '6',
      cookTime: '60 min',
      ingredients:
          ' - 2 pounds boneless, skinless chicken breasts \n - 1½ teaspoons sea salt \n - ¼ cup extra-virgin olive oil \n - 2 large shallots, roughly chopped (about 1 cup) \n - 1 pound fingerling or Yukon gold potatoes, cut into 1½ inch pieces \n - 1 tablespoon minced fresh rosemary \n - ½ pound green beans, trimmed \n - Freshly cracked black pepper, to taste \n \n- Honey-Mustard Sauce: \n - ¼ cup whole grain mustard \n - 2 tablespoons Dijon mustard \n - ⅓ cup honey \n - 1 tablespoon unfiltered apple cider vinegar \n - ½ teaspoon paprika \n - ½ teaspoon garlic powder \n ',
      method:
          ' 1.Preheat the oven to 375°F with a rack in the center position. \n \n 2.Make the chicken. Season the chicken all over with 1 teaspoon of the salt. Heat 2 tablespoons of the oil in a large ovenproof skillet or braiser over medium-high heat. Once the oil is glistening, add the chicken to the pan and cook until golden brown, about 3 minutes per side. Transfer the chicken to a plate. \n \n 2.Make the chicken. Season the chicken all over with 1 teaspoon of the salt. Heat 2 tablespoons of the oil in a large ovenproof skillet or braiser over medium-high heat. Once the oil is glistening, add the chicken to the pan and cook until golden brown, about 3 minutes per side. Transfer the chicken to a plate. \n \n 3.Meanwhile, make the honey-mustard sauce. In a small bowl, combine the whole grain mustard, Dijon, honey, remaining ½ teaspoon of the salt, apple cider vinegar, paprika and garlic powder. \n \n 4.Add the remaining 2 tablespoons of the olive oil to the skillet. Once the oil is glistening, add the shallots, potatoes, and rosemary and toss to combine. Transfer the skillet to the oven and bake, uncovered, for 15 minutes, or until the potatoes begin to soften. \n \n 5.Remove the skillet from the oven. Add the green beans to the potato mixture, then nestle the chicken back into the skillet along with the juices from the plate. Pour the honey-mustard sauce over the chicken, green beans and potatoes and toss to coat. \n \n 6.Return the skillet to the oven and bake until the green beans and potatoes are tender and the internal temperature of the chicken reaches 165°F on an instant-read thermometer, 25-30 minutes longer.'),
  Recipe(
      description: 'Parmesan pasta',
      imagePath: 'assets/recipes/parmesanpasta.jpg',
      appbar: 'Parmesan pasta',
      serve: '4',
      cookTime: '55 min',
      ingredients:
          ' - 1 pound Pasta \n - 2 tablespoons olive oil \n - 2 tablespoons unsalted butter \n - 1 medium yellow onion, chopped \n - 2 garlic cloves, minced \n - 1 can Peeled Tomatoes \n - 1 teaspoon kosher salt \n - ½ cup finely chopped fresh basil leaves, plus more for serving \n - 1 teaspoon dried oregano \n - 1 teaspoon chicken or vegetable bouillon \n - ¾ cup heavy cream \n - ¾ cup finely grated Parmesan cheese, plus more for serving \n ',
      method:
          ' 1.Heat olive oil in a large saucepan over medium heat. Once the oil is glistening, add the onion and cook, stirring occasionally, until onion is softened, about 5 minutes. Add the garlic and cook until fragrant, 1 to 2 minutes more. \n \n 2.Add the tomatoes using your hands to crush them before adding to the pot, along with the butter, salt, ½ of the basil, oregano and boullion. Bring the sauce to a simmer and cook until thickened, about 30 minutes. Remove from the heat and let cool slightly. \n \n 3.Meanwhile, bring a large pot of salted water to a boil over high heat. Add the pasta and cook. Reserve 1 to 2 cups of the pasta cooking water, then drain. \n \n 4.Use an immersion blender to blend the sauce directly in the pot until smooth. (Alternatively, transfer the sauce to the base of a blender, let cool briefly, and blend until smooth. Then pour the sauce back into the pot.) Return the pot over low heat. Stir in the cream, parmesan, remaining basil, and 1 cup of the reserved pasta water and cook until the cheese is melted and the sauce comes together. \n \n 5.Stir pasta into sauce until coated, adding splashes of the reserved pasta cooking water as needed. \n \n 6.Divide the pasta between bowls and sprinkle with Parmesan and fresh basil before serving.'),
  Recipe(
      description: 'Pumpkin soup',
      imagePath: 'assets/recipes/pumpkinsoup.png',
      appbar: 'Pumpkin soup',
      serve: '6',
      cookTime: '60 min',
      ingredients:
          ' - 2 1/2 lbs sugar pumpkin, seeded, skinned and cubed \n - 1 1/2 lbs butternut squash seeded, peeled and cubed \n - 3 tbsp olive oil \n - 2 onions, finely chopped \n - 3 garlic cloves, finely chopped \n - 2 tbsp curry powder \n - 1/2 tsp grated nutmeg \n - 1/2 tsp ground ginger \n - 1/2 tsp red pepper (optional) \n - 1 tsp salt \n - 1/2 tsp freshly ground pepper (more for serving) \n - 6 cups chicken or vegetable stock \n - 1/2 cup coconut milk (more for serving) \n ',
      method:
          ' 1.Prepare the pumpkin and butternut squash, if you have a sharp peeler, it actually works quite well to use it to remove the skins from the squash. Cube the pumpkin and squash flesh into 2-3” chunks. \n \n 2.Heat the oil in a large dutch oven or heavy soup pot, sauté onions until translucent, about 5 minutes. Add garlic and sauté for 2 more minutes. \n \n 3.Add the pumpkin, squash, curry, nutmeg, ginger, red pepper, salt and pepper and stock. Stir and bring to a boil. Reduce to a simmer and cook until squash is tender and can be pierced with a fork, about 15-20 minutes. \n \n 4.Puree the soup in a food processor or blender in small batches. \n \n 5.Once your soup is nice and creamy return it to the pot. Add your coconut milk, additional salt and pepper if needed and warm it back up over medium heat.'),
  Recipe(
      description: 'Turkey sandwich',
      imagePath: 'assets/recipes/turkeysandwich.avif',
      appbar: 'Turkey sandwich',
      serve: '1',
      cookTime: '10 min',
      ingredients:
          ' - Sliced turkey breast \n - Sliced cheese (cheddar, Swiss, etc.) \n - Whole-grain bread \n - Lettuce, tomato, onion (optional) \n - Condiments (mayonnaise, mustard) \n ',
      method:
          ' 1.Lay out slices of bread. \n \n 2.Layer turkey, cheese, and any desired veggies on the bread. \n \n 3.Spread condiments on another slice of bread and place it on top.\n \n 4.Cut in half and enjoy!'),
  Recipe(
      description: 'Mozzarella Panini',
      imagePath: 'assets/recipes/mozarelapanini.jpg',
      appbar: 'Mozzarella Panini',
      serve: '1',
      cookTime: '15 min',
      ingredients:
          ' - Sliced bread \n - Sliced fresh mozzarella cheese \n - Sliced tomatoes \n - Fresh basil leaves \n - Olive oil or butter \n',
      method:
          ' 1.Layer mozzarella, tomatoes, and basil leaves on one slice of bread. \n \n 2.Top with another slice of bread. \n \n 3.Heat a panini press or skillet over medium heat. \n \n 4.Brush the outside of the sandwich with olive oil or butter. \n \n 5.Grill the sandwich until the bread is toasted and the cheese is melted.'),
  Recipe(
      description: 'Yogurt parfait',
      imagePath: 'assets/recipes/yogurtparfait.jpg',
      appbar: 'Yogurt parfait',
      serve: '1',
      cookTime: '10 min',
      ingredients:
          ' - Greek yogurt (plain or flavoured) \n - Granola \n - Fresh fruits (berries, bananas, etc.) \n - Honey or maple syrup (optional) \n \n ',
      method:
          ' 1.In a glass or bowl, layer Greek yogurt, granola, and fresh fruits. \n \n 2.Drizzle with honey or maple syrup for extra sweetness. \n \n 3.Repeat the layers as desired. \n \n 4.Enjoy a nutritious and satisfying parfait.'),
  Recipe(
      description: 'Chocolate oatbar',
      imagePath: 'assets/recipes/chocolateoatbar.jpg',
      appbar: 'Chocolate oatbar',
      serve: '1',
      cookTime: '15 min',
      ingredients:
          ' - Rolled oats (2 cups) \n - Peanut butter (1 cup) \n - Honey or maple syrup (1/2 cup) \n - Cocoa powder (1/4 cup) \n - Vanilla extract (1 teaspoon) \n - Pinch of salt \n',
      method:
          ' 1.In a large bowl, mix oats, peanut butter, honey or maple syrup, cocoa powder, vanilla extract, and salt until well combined. \n \n 2.Press the mixture into a baking dish lined with parchment paper. \n \n 3.Refrigerate for a few hours until firm, then cut into bars. \n \n 4.Enjoy your no-bake chocolate oat bars!'),
  Recipe(
      description: 'Frozen banana pops',
      imagePath: 'assets/recipes/frozenbanana.jpg',
      appbar: 'Frozen banana pops',
      serve: '1',
      cookTime: '15 min',
      ingredients:
          ' - Ripe bananas \n - Greek yogurt or melted chocolate \n - Toppings: chopped nuts, sprinkles, shredded coconut, etc. \n ',
      method:
          ' 1.Peel bananas and cut them in half. Insert a popsicle stick into each half. \n \n 2.Dip each banana half into Greek yogurt or melted chocolate, then roll in your choice of toppings. \n \n 3.Place the coated bananas on a parchment-lined tray and freeze until firm. \n \n 4.Indulge in these frozen banana pops whenever you crave a cool treat.'),
  Recipe(
      description: 'Caprese salad sandwich',
      imagePath: 'assets/recipes/capreseSalad.png',
      appbar: 'Caprese salad sandwich',
      serve: '1',
      cookTime: '10 min',
      ingredients:
          ' - Bread slices (whole grain or ciabatta) \n - Fresh mozzarella cheese slices \n - Tomato slices \n - Fresh basil leaves \n - Balsamic vinegar or balsamic glaze \n - Olive oil \n - Salt and pepper \n ',
      method:
          ' 1.Assemble the sandwich with mozzarella, tomato, and basil leaves between bread slices. \n \n 2.Drizzle with balsamic vinegar or glaze and olive oil. \n \n 3.Season with salt and pepper to taste. \n \n 4.Grill or press the sandwich if desired, and enjoy a light and flavorful lunch.'),
  Recipe(
      description: 'Pasta salad',
      imagePath: 'assets/recipes/pastaSalad.jpg',
      appbar: 'Pasta salad',
      serve: '2',
      cookTime: '30 min',
      ingredients: ' - Cooked pasta (penne, fusilli, or your choice) \n - Cherry tomatoes, halved \n - Cucumber, diced \n - Red onion, thinly sliced \n - Bell peppers, diced \n - Olives (black or green), sliced \n - Feta cheese, crumbled \n - Italian dressing or vinaigrette \n',
      method: ' 1.In a large bowl, combine cooked pasta, vegetables, olives, and feta cheese. \n \n 2.Toss with Italian dressing or vinaigrette until well coated. \n \n 3.Chill in the refrigerator before serving as a refreshing pasta salad.'),

];

List<Recipe> allFavouriteRecipes = [];
