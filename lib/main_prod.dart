import 'package:flutter/material.dart';
import 'package:mealtracker/core/helpers/services.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
  await setupServices();
  await setupSentry();
  runApp(const MyApp());
}
