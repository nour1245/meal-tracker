import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/app_theme.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/ui/app_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Meal Tracker',
          theme: AppTheme.lightTheme,
          home: child,
        );
      },
      child: BlocProvider(
        create: (context) => HomePageCubit()..getSavedMeals(),
        child: AppHomeScreen(),
      ),
    );
  }
}
