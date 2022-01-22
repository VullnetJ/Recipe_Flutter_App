class Recipe {
  int servings;
  List<Ingredient> ingredients;
  String label;
  String imageUrl;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'images/img1.jpeg',
      6,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
    ),
    Recipe(
      'Tomato Soup',
      'images/img2.jpeg',
      5,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
    ),
    Recipe(
      'Grilled Cheese',
      'images/img3.jpeg',
      4,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'images/img4.jpeg',
      3,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
    ),
    Recipe(
      'Taco Salad',
      'images/img5.jpeg',
      2,
    [
      Ingredient(1, 'can', 'Spaghetti',),
      Ingredient(3, '', 'Frozen Meatballs',),
      Ingredient(2, 'jar', 'sauce',),
    ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'images/img6.jpeg',
      1,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(1, '', 'Frozen Meatballs',),
      Ingredient(0.25, 'jar', 'sauce',),
    ],
    ),
  ];
}
//Ingredient();
class Ingredient {
  double quanity;
  String measure;
  String name;

  Ingredient(
    this.quanity,
    this.measure,
    this.name,
  );
}