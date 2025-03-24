import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/helpers/bloc_observer.dart';
import 'package:mealtracker/core/helpers/services.dart';
import 'package:mealtracker/myapp.dart';

void main() async {
 await setupServices();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
