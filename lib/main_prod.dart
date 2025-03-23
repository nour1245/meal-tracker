import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealModelAdapter());
  runApp(const MyApp());
}
