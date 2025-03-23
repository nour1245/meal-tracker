import 'package:flutter/material.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/features/home/ui/widgets/list_item.dart';

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
          return FadeTransition(
            opacity: animation,
            child: ListItem(index: index, meals: meals),
          );
        },
      ),
    );
  }
}
