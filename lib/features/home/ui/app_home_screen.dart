import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/core/constants/images.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/ui/widgets/add_new_meal_button.dart';
import 'package:mealtracker/features/home/ui/widgets/meal_list.dart';
import 'package:mealtracker/features/home/ui/widgets/shimmer_loading.dart';
import 'package:mealtracker/features/home/ui/widgets/sort_by_drop_down.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButtonMethod(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: FutureBuilder(
        future: precacheImage(AssetImage(ImagesConst.backGroundImage), context),
        builder:
            (context, snapshot) =>
                snapshot.connectionState == ConnectionState.done
                    ? Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(ImagesConst.backGroundImage),
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
                                return ShimmerMealList();
                              },
                              homePageSuccess: (
                                meals,
                                sortBy,
                                groupedMeals,
                                sortedDates,
                              ) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          "SortBy",
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
                                return Center(child: Text("No DATA"));
                              },
                            );
                          },
                        ),
                      ),
                    )
                    : ShimmerMealList(),
      ),
    );
  }

  Expanded emptyListCase(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImagesConst.noMealsImage),
          Text(
            "No Meals Yet!! Add Meals Now",
            style: AppTextStyle.mainText(context),
          ),
        ],
      ),
    );
  }

  AddNewMealButton floatingButtonMethod(BuildContext context) {
    return AddNewMealButton(
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
}
