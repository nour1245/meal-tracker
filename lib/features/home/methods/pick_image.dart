import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ElevatedButton pickImage(mealPhotoController) {
  return ElevatedButton(
    onPressed: () async {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        mealPhotoController.text = image.path;
      }
    },
    child: Text('Pick Image'),
  );
}
