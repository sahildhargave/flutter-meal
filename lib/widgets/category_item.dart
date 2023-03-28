//import 'package:flutter/material.dart';
//import './category_meals_screen.dart';
//
//class CategoryItem extends StatelessWidget {
//  final String title;
//  final Color color;
//
//  CategoryItem(this.title, this.color) {}
//
//  //void selectionCategory(BuildContext ctx) {
//  //  Navigator.of(ctx).push(MaterialPageRoute(
//  //    builder: (_) {
//  //      return CategoryMealsScreen();
//  //    },
//  //  ));
//  //}
//
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//      //onTap: () => selectionCategory(context),
//      splashColor: Theme.of(context).primaryColor,
//      borderRadius: BorderRadius.circular(15),
//      child: Container(
//        padding: const EdgeInsets.all(15),
//        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//            colors: [
//              color.withOpacity(0.7),
//              color,
//            ],
//            begin: Alignment.topLeft,
//            end: Alignment.bottomRight,
//          ),
//          borderRadius: BorderRadius.circular(15),
//        ),
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color) {}

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
        //if you simple use push then use these
        //  MaterialPageRoute(builder: (_) {
        //  return CategoryMealsScreen(id, title);
        //}
        CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
