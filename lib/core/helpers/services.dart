import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

setupServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealModelAdapter());
}

setupSentry() async {
  await SentryFlutter.init((options) {
    options.tracesSampleRate = 0.1;
    options.dsn =
        'https://a97ff2466b63ccd511b8526b82cc8ffe@o4509043946487808.ingest.de.sentry.io/4509043947602000';
  });
}
