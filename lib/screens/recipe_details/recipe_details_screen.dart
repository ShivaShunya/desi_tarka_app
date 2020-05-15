import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/recipe.dart';

class RecipeDetalsScreen extends StatelessWidget {
  static const routeName = '/recipe-details';
  static const recipeArgKey = 'recipe';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Recipe>;
    final recipe = routeArgs[recipeArgKey];
    return Scaffold(
      appBar: AppBar(
        title: Text('🥘🍜' + recipe.title + '🍔🍖'),
      ),
      body: Card(
        elevation: 7,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    recipe.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                // Ingredients-->
                Container(
                  width: double.infinity,
                  color: Colors.black26,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text(
                      'Ingredients',
                      style: GoogleFonts.arvo(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: const EdgeInsets.all(2),
                  padding: const EdgeInsets.all(5),
                  height: 110, // fixme for variable screen size
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Card(
                        // elevation: 5,
                        color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Text(
                            (index + 1).toString() +
                                ') ' +
                                recipe.ingredients[index],
                            style: GoogleFonts.kanit(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: recipe.ingredients.length,
                  ),
                ),
                // Steps -->
                Container(
                  width: double.infinity,
                  color: Colors.black26,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text(
                      'Steps',
                      style: GoogleFonts.arvo(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: const EdgeInsets.all(2),
                  padding: const EdgeInsets.all(5),
                  height: 110, // fixme for variable screen size
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${index + 1}'),
                        ),
                        title: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            recipe.steps[index],
                            // softWrap: true,
                            // overflow: TextOverflow.fade,
                            style: GoogleFonts.kanit(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: recipe.steps.length,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black26,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text(
                      'Description',
                      style: GoogleFonts.arvo(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(2),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    recipe.description,
                    // softWrap: true,
                    // overflow: TextOverflow.fade,
                    style: GoogleFonts.kanit(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
