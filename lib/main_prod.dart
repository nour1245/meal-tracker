import 'package:flutter/material.dart';
import 'package:mealtracker/core/di/dependancy.dart';
import 'package:mealtracker/core/helpers/services.dart';
import 'package:mealtracker/core/routing/app_router.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
  await setupServices();
  await setupSentry();
  await setupGetIt();
  runApp(MyApp(appRouter: AppRouter()));
}
