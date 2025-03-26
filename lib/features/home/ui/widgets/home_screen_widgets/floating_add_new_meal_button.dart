import 'package:flutter/material.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/bottom_sheet.dart';

class FloatingAddNewMealButton extends StatelessWidget {
  const FloatingAddNewMealButton({
    super.key,
    required this.mealNameController,
    required this.mealCaloriesController,
    required this.mealTimeController,
    required this.mealPhotoController,
    required this.onPressed,
  });
  final TextEditingController mealNameController;
  final TextEditingController mealCaloriesController;
  final TextEditingController mealTimeController;
  final TextEditingController mealPhotoController;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorsManger.primary,
      child: Icon(Icons.add),
      onPressed: () {
        addNewMealDialog(
          context,
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
