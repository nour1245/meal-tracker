import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';

void addNewMealDialog(
  BuildContext context,
  meals,
  mealNameController,
  mealCaloriesController,
  mealTimeController,
  mealPhotoController,
  void Function()? onPressed,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: mealNameController,
                decoration: const InputDecoration(label: Text("Meal Name")),
              ),
              TextFormField(
                controller: mealCaloriesController,
                decoration: const InputDecoration(label: Text("Meal Calories")),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: mealTimeController,
                decoration: const InputDecoration(label: Text("Meal Time")),
              ),
              TextFormField(
                controller: mealPhotoController,
                decoration: const InputDecoration(
                  label: Text("Meal Photo Path"),
                ),
              ),
              ElevatedButton(
                onPressed:onPressed,
                child: const Text("Add Meal"),
              ),
            ],
          ),
        ),
      );
    },
  );
}
