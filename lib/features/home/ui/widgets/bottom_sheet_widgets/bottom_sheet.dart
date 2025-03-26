import 'package:flutter/material.dart';
import 'package:mealtracker/features/home/methods/bottom_sheet_setup.dart';

void addNewMealDialog(
  BuildContext context,

  mealNameController,
  mealCaloriesController,
  mealTimeController,
  mealPhotoController,
  void Function() onPressed,
) {
  final formKey = GlobalKey<FormState>();

  bottomSheetSetup(
    context,
    formKey,
    mealNameController,
    mealCaloriesController,
    mealTimeController,
    mealPhotoController,
    onPressed,
  );
}
