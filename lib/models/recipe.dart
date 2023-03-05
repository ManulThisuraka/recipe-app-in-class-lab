import 'dart:ffi';

class Recipe {
  String title;
  String description;
  Array ingredients;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
  });
}
