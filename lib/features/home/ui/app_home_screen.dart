import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/theme/text_style.dart';
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
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/app_back_ground.jpg"),
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<HomePageCubit, HomePageStates>(
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
                      meals.isEmpty
                          ? Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/add_data.png"),
                                Text(
                                  "No Meals Yet!! Add Meals Now",
                                  style: AppTextStyle.mainText(context),
                                ),
                              ],
                            ),
                          )
                          : MealList(meals: meals),
                      AddNewMealButton(
                        meals: meals,
                        mealNameController:
                            context.read<HomePageCubit>().mealNameController,
                        mealCaloriesController:
                            context
                                .read<HomePageCubit>()
                                .mealCaloriesController,
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
      ),
    );
  }
}
