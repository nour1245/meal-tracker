import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/features/home/methods/add_meal_button.dart';
import 'package:mealtracker/features/home/methods/meal_calories.dart';
import 'package:mealtracker/features/home/methods/meal_name.dart';
import 'package:mealtracker/features/home/methods/pick_date.dart';
import 'package:mealtracker/features/home/methods/pick_image.dart';

void addNewMealDialog(
  BuildContext context,
  
  mealNameController,
  mealCaloriesController,
  mealTimeController,
  mealPhotoController,
  void Function() onPressed,
) {
  final _formKey = GlobalKey<FormState>();

  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.blueGrey,
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                mealName(mealNameController),
                SizedBox(height: 10.h),
                mealCalories(mealCaloriesController),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    pickDate(context, mealTimeController),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        mealTimeController.text.isEmpty
                            ? 'No date & time selected'
                            : mealTimeController.text,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    pickImage(mealPhotoController),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        mealPhotoController.text.isEmpty
                            ? 'No image selected'
                            : 'Image selected',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                addMealButton(
                  _formKey,
                  mealTimeController,
                  context,
                  mealPhotoController,
                  onPressed,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
