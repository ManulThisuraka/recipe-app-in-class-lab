import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class RecipeRepository {
  final CollectionReference _recipes =
      FirebaseFirestore.instance.collection('recipes');

  // Get all recipes
  Future getAllRecipes() async {
    return _recipes;
  }

  // Add new recipe
  Future addRecipe(String title, String description) async {
    return await _recipes.add({
      "title": title,
      "description": description,
      "ingredients": ["sample01", "sample02"],
    });
  }

  // Update recipe
  Future<void> updateRecipe(String id, String title, String description) async {
    return await _recipes.doc(id).update({
      "title": title,
      "description": description,
      "ingredients": ["sample01Updated", "sample02Updated"],
    });
  }

  // Delete recipe
  Future deleteRecipe(id) async {
    await _recipes.doc(id).delete();
  }
}
