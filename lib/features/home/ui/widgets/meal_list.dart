import 'package:flutter/material.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/features/home/ui/widgets/list_item.dart';

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
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: sortedDates.length * 2,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return const Divider(height: 0, color: ColorsManger.primary);
          }
          final groupIndex = index ~/ 2;
          final date = sortedDates[groupIndex];
          final mealsOfDay = groupedMeals[date]!;
          final totalCalories = mealsOfDay.fold(
            0,
            (sum, meal) => sum + meal.calories,
          );
          return Column(
            children: [
              ListTile(
                title: Text(
                  'Date: ${date.toLocal().toString().split(' ')[0]}',
                  style: AppTextStyle.mainText(
                    context,
                  ).copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  'Total Calories: $totalCalories',
                  style: AppTextStyle.mainText(context),
                ),
              ),
              ...mealsOfDay.map((meal) {
                return ListItem(meal: meal, listItem: meal.id);
              }),
            ],
          );
        },
      ),
    );
  }
}
