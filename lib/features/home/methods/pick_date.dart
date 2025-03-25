import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

ElevatedButton pickDate(BuildContext context, mealTimeController) {
  return ElevatedButton(
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
  );
}
