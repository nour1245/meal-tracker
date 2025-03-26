import 'package:flutter/material.dart';

class AddMealButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController mealTimeController;
  final TextEditingController mealPhotoController;
  final VoidCallback onPressed;

  const AddMealButton({
    super.key,
    required this.formKey,
    required this.mealTimeController,
    required this.mealPhotoController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          if (mealTimeController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please pick a date and time')),
            );
            return;
          }
          if (mealPhotoController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please pick an image')),
            );
            return;
          }
          onPressed();
        }
      },
      child: const Text("Add Meal"),
    );
  }
}
