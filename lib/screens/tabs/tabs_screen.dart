import 'package:flutter/material.dart';

import '../category/categories_screen.dart';
import '../favorites/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // tabs are connected internally with the mentioned
      // Widgets in Scaffold body by DefaultTabController
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Desi Tarka'),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
