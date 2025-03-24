import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.meal, required this.index});
  final MealModel meal;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(meal.name),
        subtitle: Text('${meal.calories} calories at ${meal.time}'),
        leading: Image.file(File(meal.photoPath)),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => context.read<HomePageCubit>().deleteMeal(index),
        ),
      ),
    );
  }
}
