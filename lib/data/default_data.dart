import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/recipe.dart';

const DEFAULT_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Mayer Hater',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.blue,
  ),
  Category(
    id: 'c3',
    title: 'Indian',
    color: Colors.brown,
  ),
  Category(
    id: 'c4',
    title: 'Fast and Furious',
    color: Colors.green,
  ),
  Category(
    id: 'c5',
    title: 'Bata O Bhokta',
    color: Colors.brown,
  ),
  Category(
    id: 'c6',
    title: 'Mom\'s Special',
    color: Colors.pink,
  ),
  Category(
    id: 'c7',
    title: 'Fish',
    color: Colors.orange,
  ),
  Category(
    id: 'c8',
    title: 'Chicken',
    color: Colors.yellow,
  ),
  Category(
    id: 'c9',
    title: 'Choww',
  ),
  Category(
    id: 'c10',
    title: 'Biryani',
    color: Colors.indigo,
  ),
];

const DEFAULT_RECIPES = const [
  Recipe(
    id: 'r1',
    categories: ['c1', 'c2'],
    title: 'Recipe1',
    imageUrl: 'https://live.staticflickr.com/5134/30065852941_76d1d0a157_b.jpg',
    description: 'Recipe1 description',
    ingredients: ['Ingredient 1', 'Ingredient 2', 'Ingredient 3'],
    steps: ['Step 1', 'Step 2', 'Step 3'],
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: TrueValue.Unknown,
    isLactoseFree: TrueValue.Unknown,
    isVegan: TrueValue.Unknown,
    isVegtarian: TrueValue.Unknown,
  ),
  Recipe(
    id: 'r2',
    categories: ['c3', 'c5', 'c1'],
    title: 'Recipe2',
    imageUrl: 'https://live.staticflickr.com/5134/30065852941_76d1d0a157_b.jpg',
    description: 'Recipe2 description',
    ingredients: ['Ingredient 1', 'Ingredient 2', 'Ingredient 3'],
    steps: ['Step 1', 'Step 2', 'Step 3'],
    duration: 20,
    complexity: Complexity.Challenging,
    affordability: Affordability.Affordable,
    isGlutenFree: TrueValue.Unknown,
    isLactoseFree: TrueValue.Unknown,
    isVegan: TrueValue.Unknown,
    isVegtarian: TrueValue.Unknown,
  ),
  Recipe(
    id: 'r3',
    categories: ['c1', 'c7'],
    title: 'Recipe3',
    imageUrl: 'https://live.staticflickr.com/5134/30065852941_76d1d0a157_b.jpg',
    description: 'Recipe3 description',
    ingredients: ['Ingredient 1', 'Ingredient 2', 'Ingredient 3'],
    steps: ['Step 1', 'Step 2', 'Step 3'],
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: TrueValue.Unknown,
    isLactoseFree: TrueValue.Unknown,
    isVegan: TrueValue.Unknown,
    isVegtarian: TrueValue.Unknown,
  ),
  Recipe(
    id: 'r4',
    categories: ['c8', 'c2', 'c1'],
    title: 'Recipe4',
    imageUrl: 'https://live.staticflickr.com/5134/30065852941_76d1d0a157_b.jpg',
    description: 'Recipe4 description',
    ingredients: [
      'Ingredient 1',
      'Ingredient 2',
      'Ingredient 3',
      'Ingredient 4',
      'Ingredient 5',
      'Ingredient 6',
      'Ingredient 7',
    ],
    steps: ['Step 1', 'Step 2', 'Step 3'],
    duration: 15,
    complexity: Complexity.Unknown,
    affordability: Affordability.Luxurious,
    isGlutenFree: TrueValue.Unknown,
    isLactoseFree: TrueValue.Unknown,
    isVegan: TrueValue.Unknown,
    isVegtarian: TrueValue.Unknown,
  ),
];
