import 'package:flutter/material.dart';

class ImageSelectionText extends StatelessWidget {
  final TextEditingController controller;

  const ImageSelectionText({
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
            controller.text.isEmpty ? 'No image selected' : 'Image selected',
            overflow: TextOverflow.ellipsis,
          );
        },
      ),
    );
  }
}