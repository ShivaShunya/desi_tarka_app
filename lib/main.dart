import 'package:flutter/material.dart';

import './screens/category/categories_screen.dart';
import './screens/recipe/category_recipes_screen.dart';
import './screens/recipe_details/recipe_details_screen.dart';
import './screens/tabs/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desi Tarka',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.grey[200],
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/', [just for understanding]
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryRecipesScreen.routeName: (ctx) => CategoryRecipesScreen(),
        RecipeDetalsScreen.routeName: (ctx) => RecipeDetalsScreen(),
      },
      onGenerateRoute: (settings) {
        // this screen is generated on top of the screen when any undefined route
        // nevigation happens. Not needed in this app.

        // if (settings.name == './recipe-details'){
        //   return MaterialPageRoute(builder: (ctx) => RecipeDetalsScreen();
        // }
        // else if...
        // else ...
        print(settings.arguments);

        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        // if flutter fails to find any screen to create, no routes, no onGenerateRoule
        // also, then at last flutter calls onUnknownRoute. Not needed in this app.
        // This is like the fall back page. If any error happens or any crash happens
        // instead on showing error it's good to have a fallback option in the app
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
