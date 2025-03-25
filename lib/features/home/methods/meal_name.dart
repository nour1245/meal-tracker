import 'package:flutter/material.dart';

TextFormField mealName(mealNameController) {
  return TextFormField(
    keyboardType: TextInputType.text,
    controller: mealNameController,
    decoration: const InputDecoration(label: Text("Meal Name")),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a meal name';
      }
      return null;
    },
  );
}
