import 'package:flutter/material.dart';

class DateTimeText extends StatelessWidget {
  final TextEditingController controller;

  const DateTimeText({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          return Text(
            controller.text.isEmpty ? 'No date & time selected' : controller.text,
            overflow: TextOverflow.ellipsis,
          );
        },
      ),
    );
  }
}