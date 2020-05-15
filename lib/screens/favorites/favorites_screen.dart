import 'package:flutter/material.dart';


class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('My Favorite Recipes'),
          Image.network(
                    'https://live.staticflickr.com/5134/30065852941_76d1d0a157_b.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
        ],
      ),
    );
  }
}