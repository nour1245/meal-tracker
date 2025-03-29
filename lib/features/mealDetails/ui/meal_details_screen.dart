import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/mealDetails/controller/cubit/meal_details_cubit.dart';
import 'package:mealtracker/features/mealDetails/controller/cubit/meal_details_state.dart';
import 'package:mealtracker/features/mealDetails/ui/widgets/details_screen_body.dart';
import 'package:mealtracker/features/mealDetails/ui/widgets/meal_details_shimmer.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: BlocBuilder<MealDetailsCubit, MealDetailsState>(
          builder: (context, state) {
            return state.when(
              mealLoading: () => MealDetailsShimmer(),
              mealSuccess: (mealDetails) {
                return DetailsScreenBody(mealDetails:mealDetails);
              },
              mealError: (error) {
                return Center(child: Text(error));
              },
            );
          },
        ),
      ),
    );
  }
}
