import 'package:flutter/material.dart';
import 'package:mealtracker/core/constants/text.dart';

class MealCaloriesInput extends StatelessWidget {
  final TextEditingController controller;

  const MealCaloriesInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        label: Text(TextConstants.mealCalories),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return TextConstants.enterMealCalories;
        }
        if (int.tryParse(value) == null) {
          return TextConstants.enterValidMealCalories;
        }
        return null;
      },
    );
  }
}
