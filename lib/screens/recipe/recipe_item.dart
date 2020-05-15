import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/recipe.dart';
import '../recipe_details/recipe_details_screen.dart';

class RecipeItem extends StatelessWidget {
  final Recipe recipe;

  RecipeItem(this.recipe);

  void openRecipeDetails(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      RecipeDetalsScreen.routeName,
      arguments: {
        RecipeDetalsScreen.recipeArgKey: recipe,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 15;
    return InkWell(
      onTap: () {
        openRecipeDetails(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                  child: Image.network(
                    recipe.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  // only for Stack widgets
                  bottom: 10,
                  left:
                      10, // instead of the container width set left,right of Positioned
                  right:
                      10, // instead of the container width set left,right of Positioned
                  child: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      recipe.title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.fjallaOne(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 3,
                      ),
                      Text(recipe.duration.toString() + ' mins'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(
                        width: 3,
                      ),
                      Text(recipe.complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 3,
                      ),
                      Text(recipe.affordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
