import 'package:flutter/material.dart';
import 'package:mealtracker/core/constants/text.dart';

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
              const SnackBar(content: Text(TextConstants.dateTimeNotValid)),
            );
            return;
          }
          if (mealPhotoController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(TextConstants.imageNotValid)),
            );
            return;
          }
          onPressed();
        }
      },
      child: const Text(TextConstants.addMeal),
    );
  }
}
