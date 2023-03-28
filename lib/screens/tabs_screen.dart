import "dart:io";
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/favorite_screen.dart';
import '../screens/search_screen.dart';
import '../widgets/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Your Favorite',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        //DefaultTabController(
        //    length: 3,
        //    initialIndex: 1,
        //    child:
        Scaffold(
            appBar: AppBar(
              title: Text(_pages[_selectedPageIndex]['title']),
              //    bottom: TabBar(tabs: <Widget>[
              //      Tab(icon: Icon(Icons.category), text: ('Categories')),
              //      Tab(icon: Icon(Icons.star), text: ('Favorites')),
              //      Tab(icon: Icon(Icons.search), text: ('Search')),
              //    ])),
              //body: TabBarView(
              //  children: <Widget>[
              //    CategoriesScreen(),
              //    FavoritesScreen(),
              //    SearchScreen(),
              //  ],
              //)
            ),
            drawer: MainDrawer(),
            body: _pages[_selectedPageIndex]['page'],
            bottomNavigationBar: BottomNavigationBar(
                onTap: _selectPage,
                backgroundColor: Theme.of(context).primaryColor,
                unselectedItemColor: Colors.white,
                selectedItemColor: Theme.of(context).accentColor,
                currentIndex: _selectedPageIndex,
                //type:BottomNavigationBarType.shifting,
                //it is use for cool animation but styling should be given to item below as given
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.category),
                    label: ('Category'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.star),
                    label: ('Favorites'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: ('Search'),
                  ),
                ]));
  }
}
