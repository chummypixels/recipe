class Recipe {
  String label;
  String imageUrl;

  //TODO: Add servings and ingredients here
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  //TODO: Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe('Delicious PadThai', 'assets/padThai.jpg', 4, [
      Ingredient(1, 'box', 'PadThai'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce')
    ]),
    Recipe('Pancakes', 'assets/pancake.jpg', 2,
        [Ingredient(1, 'can', 'Tomato Soup')]),
    Recipe('Fresh Salmon', 'assets/salmon.jpg', 1,
        [Ingredient(2, 'slices', 'Cheese'), Ingredient(1, 'slices', 'Bread')]),
    Recipe('Hot Tea', 'assets/tea-cup.jpg', 24,
        [Ingredient(4, 'plates', 'Pepper'), Ingredient(4, 'pieces', 'Salt')]),
    Recipe('Vegetables serving', 'assets/vegetable.jpg', 3,
        [Ingredient(5, 'oz', 'Carbage'), Ingredient(3, 'oz', 'Lettuce')]),
    Recipe('Fresh vegetable brunch', 'assets/vegetables.jpg', 6, [
      Ingredient(4, 'bunch', 'Asparagus'),
      Ingredient(3, 'bunch', 'Lettuce')
    ]),
  ];
}

//TODO: Add Ingredients() here
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
