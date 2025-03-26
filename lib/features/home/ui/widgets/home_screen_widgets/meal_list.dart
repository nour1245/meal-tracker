import 'package:flutter/material.dart';
import 'package:mealtracker/core/constants/text.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/list_item.dart';

class MealList extends StatelessWidget {
  const MealList({
    super.key,
    required this.groupedMeals,
    required this.sortedDates,
  });
  final Map<DateTime, List<MealModel>> groupedMeals;
  final List<DateTime> sortedDates;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: sortedDates.length,
        separatorBuilder:
            (_, __) => const Divider(height: 24, color: ColorsManger.primary),
        itemBuilder: (context, index) {
          final date = sortedDates[index];
          final mealsOfDay = groupedMeals[date]!;

          return _DateGroup(date: date, meals: mealsOfDay);
        },
      ),
    );
  }
}

class _DateGroup extends StatelessWidget {
  final DateTime date;
  final List<MealModel> meals;

  const _DateGroup({required this.date, required this.meals});

  @override
  Widget build(BuildContext context) {
    final totalCalories = meals.fold(0, (sum, meal) => sum + meal.calories);

    return Column(
      children: [
        ListTile(
          title: Text(
            '${TextConstants.date}: ${date.toLocal().toString().split(' ')[0]}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            '${TextConstants.totalCalories}: $totalCalories',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        ...meals.map((meal) => ListItem(meal: meal, mealId: meal.id)),
      ],
    );
  }
}
