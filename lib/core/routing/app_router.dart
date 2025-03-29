import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/di/dependancy.dart';
import 'package:mealtracker/core/routing/routes.dart';
import 'package:mealtracker/features/categoryScreen/controller/cubit/categories_cubit.dart';
import 'package:mealtracker/features/categoryScreen/ui/categories_screen.dart';
import 'package:mealtracker/features/filteredMealScreen/controller/cubit/filterd_meals_cubit.dart';
import 'package:mealtracker/features/filteredMealScreen/ui/meals_screen.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/ui/app_home_screen.dart';
import 'package:mealtracker/features/mealDetails/controller/cubit/meal_details_cubit.dart';
import 'package:mealtracker/features/mealDetails/ui/meal_details_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.categoryScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<CategoriesCubit>(),
                child: CategoriesScreen(),
              ),
        );
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<HomePageCubit>()..getSavedMeals(),
                child: AppHomeScreen(),
              ),
        );
      case Routes.mealsScreen:
        final categoryName = settings.arguments as String;
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<FilterdMealsCubit>(),
                child: MealsScreen(categoryName: categoryName),
              ),
        );
      case Routes.mealDetailsScreen:
        final mealId = settings.arguments as String;
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (context) =>
                        getIt<MealDetailsCubit>()..loadMealDetails(mealId),
                child: MealDetailsScreen(),
              ),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<HomePageCubit>()..getSavedMeals(),
                child: const AppHomeScreen(),
              ),
        );
    }
  }
}
