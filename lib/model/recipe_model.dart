class RecipeModel {
  const RecipeModel({
    //   required this.coms,
    // required this.duration,
    // required this.lastUpdate,
    required this.recipeName,
    // required this.ingredient
  });

  final String recipeName;
  // final double duration;
  // final DateTime lastUpdate;
  // final List<String> ingredient;
  // final List<String> coms;

  RecipeModel getjson() {
    const RecipeModel user = RecipeModel(recipeName: 'lololllllmmpp');
    return user;
  }
}
