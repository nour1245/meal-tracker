import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mealtracker/core/helpers/bloc_observer.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(MealModelAdapter());
  runApp(const MyApp());
}
