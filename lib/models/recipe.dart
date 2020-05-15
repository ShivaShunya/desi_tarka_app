import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Difficult, Unknown }

enum Affordability { Affordable, Pricey, Luxurious, Unknown }

enum TrueValue { Yes, No, Unknown }

class Recipe {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final TrueValue isGlutenFree;
  final TrueValue isLactoseFree;
  final TrueValue isVegan;
  final TrueValue isVegtarian;

  const Recipe({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.description,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegtarian,
  });

  String get complexityText {
    if (complexity == Complexity.Simple) return 'Simple';
    else if (complexity == Complexity.Challenging) return 'Challenging';
    else if (complexity == Complexity.Difficult) return 'Difficult';
    else return 'Unknown';
  }

  String get affordabilityText {
    if (affordability == Affordability.Affordable) return 'Affordable';
    else if (affordability == Affordability.Pricey) return 'Pricey';
    else if (affordability == Affordability.Luxurious) return 'Luxurious';
    else return 'Unknown';
  }
}
