//import 'package:flutter/material.dart';
//import '../widgets/meal_item.dart';
//
//import '../models/meal.dart';
//
//class FavoritesScreen extends StatelessWidget {
//  final List<Meal> favoriteMeals;
//  FavoritesScreen(this.favoriteMeals);
//  @override
//  Widget build(BuildContext context) {
//    if (favoriteMeals.isEmpty) {
//      return Center(
//        child: Text("Favorite"),
//      );
//    } else {
//      ListView.builder(
//        itemBuilder: (context, index) {
//          return MealItem(
//            id: favoriteMeals[index].id,
//            title: favoriteMeals[index].title,
//            imageUrl: favoriteMeals[index].imageUrl,
//            affordability: favoriteMeals[index].affordability,
//            complexity: favoriteMeals[index].complexity,
//            duration: favoriteMeals[index].duration,
//          );
//        },
//        itemCount: favoriteMeals.length,
//      );
//    }
//  }
//}
import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
