import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/di/dependancy.dart';
import 'package:mealtracker/core/helpers/bloc_observer.dart';
import 'package:mealtracker/core/helpers/services.dart';
import 'package:mealtracker/core/routing/app_router.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
  await setupServices();
  await setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(appRouter: AppRouter()));
}
