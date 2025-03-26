import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/add_meal_button.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/meal_calories.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/meal_name.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/pick_date.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/pick_image.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/select_date_time_text.dart';
import 'package:mealtracker/features/home/ui/widgets/bottom_sheet_widgets/select_image_text.dart';

Future<dynamic> bottomSheetSetup(
  BuildContext context,
  GlobalKey<FormState> formKey,
  mealNameController,
  mealCaloriesController,
  mealTimeController,
  mealPhotoController,
  void Function() onPressed,
) {
  return showModalBottomSheet(
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: ColorsManger.primary,
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MealNameInput(controller: mealNameController),
                  SizedBox(height: 10.h),
                  MealCaloriesInput(controller: mealCaloriesController),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      DatePickerButton(controller: mealTimeController),
                      SizedBox(width: 10),
                      DateTimeText(controller: mealTimeController),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      ImagePickerButton(controller: mealPhotoController),
                      SizedBox(width: 10),
                      ImageSelectionText(controller: mealPhotoController),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  AddMealButton(
                    formKey: formKey,
                    mealPhotoController: mealPhotoController,
                    mealTimeController: mealTimeController,
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
