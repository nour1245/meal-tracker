import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/constants/text.dart';
import 'package:mealtracker/core/routing/app_router.dart';
import 'package:mealtracker/core/routing/routes.dart';
import 'package:mealtracker/core/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          initialRoute: Routes.mainScreen,
          onGenerateRoute: appRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          title: TextConstants.appTitle,
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
