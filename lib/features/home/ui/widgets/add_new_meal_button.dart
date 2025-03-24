import 'package:flutter/material.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet.dart';

class AddNewMealButton extends StatelessWidget {
  const AddNewMealButton({
    super.key,
    required this.meals,
    required this.mealNameController,
    required this.mealCaloriesController,
    required this.mealTimeController,
    required this.mealPhotoController,
    required this.onPressed,
  });
  final List<MealModel> meals;
  final TextEditingController mealNameController;
  final TextEditingController mealCaloriesController;
  final TextEditingController mealTimeController;
  final TextEditingController mealPhotoController;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        addNewMealDialog(
          context,
          meals,
          mealNameController,
          mealCaloriesController,
          mealTimeController,
          mealPhotoController,
          onPressed,
        );
      },
    );
  }
}
