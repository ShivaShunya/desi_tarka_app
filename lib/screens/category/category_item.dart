import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/category.dart';
import '../recipe/category_recipes_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void openCategoryMealsScreen(BuildContext ctx) {
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(category);
    //     },
    //   ),
    // );
    Navigator.of(ctx).pushNamed(
      CategoryRecipesScreen.routeName,
      arguments: {
        CategoryRecipesScreen.categoryArgKey: category,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(15);
    return InkWell(
      onTap: () {
        openCategoryMealsScreen(context);
      },
      splashColor: Colors.pink,
      borderRadius: borderRadius,
      highlightColor: Colors.blue,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          category.title,
          style: GoogleFonts.lobster(
            fontSize: 20,
            // fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        // color: category.color,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.7),
              category.color,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
