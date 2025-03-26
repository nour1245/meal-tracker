import 'package:flutter/material.dart';

ElevatedButton addMealButton(
  GlobalKey<FormState> formKey,
  mealTimeController,
  BuildContext context,
  mealPhotoController,
  void Function() onPressed,
) {
  return ElevatedButton(
    onPressed: () {
      if (formKey.currentState!.validate()) {
        if (mealTimeController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Please pick a date and time')),
          );
          return;
        }
        if (mealPhotoController.text.isEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Please pick an image')));
          return;
        }
        onPressed.call();
      }
    },
    child: const Text("Add Meal"),
  );
}
