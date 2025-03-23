import 'package:flutter/material.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

class MealList extends StatelessWidget {
  const MealList({super.key, required this.meals, required this.listKey});
  final List<MealModel> meals;
  final listKey;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedList(
        initialItemCount: meals.length,
        key: listKey,
        itemBuilder: (context, index, animation) {
          return Card(
            child: ListTile(
              title: Text(meals[index].name),
              subtitle: Text(
                '${meals[index].calories} calories at ${meals[index].time}',
              ),
              leading: Image.asset(meals[index].photoPath),
            ),
          );
        },
      ),
    );
  }
}
