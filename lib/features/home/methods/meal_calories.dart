import 'package:flutter/material.dart';

TextFormField mealCalories(mealCaloriesController) {
  return TextFormField(
    controller: mealCaloriesController,
    decoration: const InputDecoration(label: Text("Meal Calories")),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter meal calories';
      }
      if (int.tryParse(value) == null) {
        return 'Please enter a valid number';
      }
      return null;
    },
  );
}
