import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.meals, required this.index});
  final List<MealModel> meals;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(meals[index].name),
        subtitle: Text(
          '${meals[index].calories} calories at ${meals[index].time}',
        ),
        leading: Image.asset(meals[index].photoPath),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            context.read<HomePageCubit>().deleteMeal(index);
          },
        ),
      ),
    );
  }
}
