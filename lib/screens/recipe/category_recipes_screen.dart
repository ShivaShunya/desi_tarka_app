import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../data/default_data.dart';
import './recipe_item.dart';


class CategoryRecipesScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  static const categoryArgKey = 'category';

  // final Category category;

  // CategoryMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, Category>;
    final category = routeArgs[categoryArgKey];
    final categoryRecipes = DEFAULT_RECIPES.where((recipe) {
      return recipe.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '👨‍🍳' + category.title + ' Recipes👨‍🍳',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return RecipeItem(categoryRecipes[index]);
        },
        itemCount: categoryRecipes.length,
      ),
    );
  }
}
