import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/features/home/ui/widgets/list_item.dart';

class MealList extends StatelessWidget {
  const MealList({super.key, required this.meals});
  final List<MealModel> meals;

  @override
  Widget build(BuildContext context) {
    // Group meals by date
    Map<DateTime, List<MealModel>> groupedMeals = {};
    for (var meal in meals) {
      try {
        DateTime date = DateTime.parse(meal.time);
        DateTime dateOnly = DateTime(date.year, date.month, date.day);
        if (!groupedMeals.containsKey(dateOnly)) {
          groupedMeals[dateOnly] = [];
        }
        groupedMeals[dateOnly]!.add(meal);
      } catch (e) {
        print('Error parsing date: $e');
      }
    }

    // Sort dates in ascending order
    var sortedDates =
        groupedMeals.keys.toList()..sort(
          context.read<HomePageCubit>().currentSortBy == SortBy.time
              ? (a, b) => b.compareTo(a)
              : (a, b) => a.compareTo(b),
        );

    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: sortedDates.length * 2, // Header + meals per date
        itemBuilder: (context, index) {
          if (index.isOdd) return const Divider(height: 0);
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
                  ).copyWith(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                subtitle: Text('Total Calories: $totalCalories',style: AppTextStyle.mainText(context)),
              ),
              ...mealsOfDay.map((meal) {
                int mealIndex = meals.indexOf(meal);
                return ListItem(meal: meal, index: mealIndex);
              }),
            ],
          );
        },
      ),
    );
  }
}
