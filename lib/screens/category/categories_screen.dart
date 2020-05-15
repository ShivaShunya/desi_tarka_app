import 'package:flutter/material.dart';

import '../../data/default_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal[50],
        child: GridView(
          padding: const EdgeInsets.all(15),
          children:
              DEFAULT_CATEGORIES.map((catItem) => CategoryItem(catItem)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      );
  }
}
