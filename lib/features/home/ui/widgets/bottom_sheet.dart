import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

void addNewMealDialog(
  BuildContext context,
  meals,
  mealNameController,
  mealCaloriesController,
  mealTimeController,
  mealPhotoController,
  void Function()? onPressed,
) {
  final _formKey = GlobalKey<FormState>();

  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.blueGrey,
    context: context,
    builder: (context) {
      return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                controller: mealNameController,
                decoration: const InputDecoration(label: Text("Meal Name")),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a meal name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: mealCaloriesController,
                decoration: const InputDecoration(label: Text("Meal Calories")),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter meal calories';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now().subtract(Duration(days: 30)),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (pickedTime != null) {
                          final dateTime = DateTime(
                            pickedDate.year,
                            pickedDate.month,
                            pickedDate.day,
                            pickedTime.hour,
                            pickedTime.minute,
                          );
                          mealTimeController.text = DateFormat(
                            'yyyy-MM-dd HH:mm:ss',
                          ).format(dateTime);
                        }
                      }
                    },
                    child: Text('Pick Date & Time'),
                  ),
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
                  ElevatedButton(
                    onPressed: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        mealPhotoController.text = image.path;
                      }
                    },
                    child: Text('Pick Image'),
                  ),
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (mealTimeController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please pick a date and time')),
                      );
                      return;
                    }
                    if (mealPhotoController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please pick an image')),
                      );
                      return;
                    }
                    onPressed?.call();
                  }
                },
                child: const Text("Add Meal"),
              ),
            ],
          ),
        ),
      );
    },
  );
}