import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/constants/images.dart';
import 'package:mealtracker/core/constants/text.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/floating_add_new_meal_button.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/meal_list.dart';
import 'package:mealtracker/features/home/ui/widgets/home_screen_widgets/sort_by_drop_down.dart';
import 'package:mealtracker/features/home/ui/widgets/shimmer_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingButtonMethod(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: BlocBuilder<HomePageCubit, HomePageStates>(
          buildWhen: (previous, current) {
            return current is HomePageLoading ||
                current is HomePageSuccess ||
                current is HomePageError;
          },
          builder: (context, state) {
            return state.maybeWhen(
              homePageLoading: () {
                return ShimmerMealList();
              },
              homePageSuccess: (meals, sortBy, groupedMeals, sortedDates) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          TextConstants.sortBy,
                          style: AppTextStyle.mainText(
                            context,
                          ).copyWith(color: Colors.red),
                        ),
                        SortByDropDown(sortBy: sortBy),
                      ],
                    ),
                    meals.isEmpty
                        ? emptyListCase(context)
                        : MealList(
                          groupedMeals: groupedMeals,
                          sortedDates: sortedDates,
                        ),
                  ],
                );
              },
              homePageError: (message) {
                return Center(child: Text(message));
              },
              orElse: () {
                return Center(child: Text(TextConstants.noData));
              },
            );
          },
        ),
      ),
    );
  }
}

Expanded emptyListCase(BuildContext context) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(ImagesConst.noMealsImage),
        Text(TextConstants.noMeals, style: AppTextStyle.mainText(context)),
      ],
    ),
  );
}

FloatingAddNewMealButton floatingButtonMethod(BuildContext context) {
  return FloatingAddNewMealButton(
    mealNameController: context.read<HomePageCubit>().mealNameController,
    mealCaloriesController:
        context.read<HomePageCubit>().mealCaloriesController,
    mealTimeController: context.read<HomePageCubit>().mealTimeController,
    mealPhotoController: context.read<HomePageCubit>().mealPhotoController,
    onPressed: () {
      context.read<HomePageCubit>().addNewMeal(context);
    },
  );
}
