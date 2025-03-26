import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mealtracker/core/constants/text.dart';

class ImagePickerButton extends StatelessWidget {
  final TextEditingController controller;

  const ImagePickerButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final image = await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image != null) controller.text = image.path;
      },
      child: const Text(TextConstants.pickImage),
    );
  }
}