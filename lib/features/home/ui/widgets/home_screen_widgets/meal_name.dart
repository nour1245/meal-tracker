import 'package:flutter/material.dart';
import 'package:mealtracker/core/constants/text.dart';

class MealNameInput extends StatelessWidget {
  final TextEditingController controller;

  const MealNameInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(label: Text(TextConstants.mealName)),
      validator: (value) {
        if (value == null || value.isEmpty) return TextConstants.noMealNameText;
        return null;
      },
    );
  }
}
