import 'package:flutter/material.dart';

class MealCaloriesInput extends StatelessWidget {
  final TextEditingController controller;

  const MealCaloriesInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(label: Text("Meal Calories")),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) return 'Please enter meal calories';
        if (int.tryParse(value) == null) return 'Please enter a valid number';
        return null;
      },
    );
  }
}