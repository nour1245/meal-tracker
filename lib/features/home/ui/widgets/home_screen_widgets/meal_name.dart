import 'package:flutter/material.dart';

class MealNameInput extends StatelessWidget {
  final TextEditingController controller;

  const MealNameInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(label: Text("Meal Name")),
      validator: (value) {
        if (value == null || value.isEmpty) return 'Please enter a meal name';
        return null;
      },
    );
  }
}