import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/ui/widgets/add_new_meal_button.dart';
import 'package:mealtracker/features/home/ui/widgets/meal_list.dart';
import 'package:mealtracker/features/home/ui/widgets/sort_by_drop_down.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<HomePageCubit, HomePageStates>(
          listener: (context, state) {},
          buildWhen: (previous, current) {
            return current is HomePageLoading ||
                current is HomePageSuccess ||
                current is HomePageError;
          },
          builder: (context, state) {
            return state.maybeWhen(
              homePageLoading: () {
                return Center(child: CircularProgressIndicator());
              },
              homePageSuccess: (meals, sortBy) {
                return Column(
                  children: [
                    SortByDropDown(sortBy: sortBy),
                    MealList(
                      listKey: context.read<HomePageCubit>().listKey,
                      meals: meals,
                    ),
                    AddNewMealButton(
                      listKey: context.read<HomePageCubit>().listKey,
                      meals: meals,
                      mealNameController:
                          context.read<HomePageCubit>().mealNameController,
                      mealCaloriesController:
                          context.read<HomePageCubit>().mealCaloriesController,
                      mealTimeController:
                          context.read<HomePageCubit>().mealTimeController,
                      mealPhotoController:
                          context.read<HomePageCubit>().mealPhotoController,
                      onPressed: () {
                        context.read<HomePageCubit>().addNewMeal(context);
                      },
                    ),
                  ],
                );
              },
              homePageError: (message) {
                return Center(child: Text(message));
              },
              orElse: () {
                return Center(child: Text("No DATA"));
              },
            );
          },
        ),
      ),
    );
  }
}
