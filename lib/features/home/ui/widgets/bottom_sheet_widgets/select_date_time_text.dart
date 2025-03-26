import 'package:flutter/material.dart';
import 'package:mealtracker/core/constants/text.dart';

class DateTimeText extends StatelessWidget {
  final TextEditingController controller;

  const DateTimeText({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          return Text(
            controller.text.isEmpty
                ? TextConstants.dateTimeText
                : controller.text,
            overflow: TextOverflow.ellipsis,
          );
        },
      ),
    );
  }
}
