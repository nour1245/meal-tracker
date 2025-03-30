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
        return _buildRoute(
          BlocProvider(
            create: (context) => getIt<CategoriesCubit>(),
            child: const CategoriesScreen(),
          ),
        );

      case Routes.mainScreen:
        return _buildRoute(
          BlocProvider(
            create: (context) => getIt<HomePageCubit>()..getSavedMeals(),
            child: const AppHomeScreen(),
          ),
        );

      case Routes.mealsScreen:
        final categoryName = settings.arguments as String;
        return _buildRoute(
          BlocProvider(
            create: (context) => getIt<FilterdMealsCubit>(),
            child: MealsScreen(categoryName: categoryName),
          ),
        );

      case Routes.mealDetailsScreen:
        final mealId = settings.arguments as String;
        return _buildRoute(
          BlocProvider(
            create:
                (context) => getIt<MealDetailsCubit>()..loadMealDetails(mealId),
            child: const MealDetailsScreen(),
          ),
          fullscreenDialog:
              true, // Optional: if you want a different transition
        );

      default:
        return _buildRoute(
          BlocProvider(
            create: (context) => getIt<HomePageCubit>()..getSavedMeals(),
            child: const AppHomeScreen(),
          ),
        );
    }
  }

  PageRouteBuilder _buildRoute(Widget widget, {bool fullscreenDialog = false}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
      transitionDuration: const Duration(milliseconds: 300),
      fullscreenDialog: fullscreenDialog,
    );
  }
}
