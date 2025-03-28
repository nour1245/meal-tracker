import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealtracker/features/filteredMealScreen/controller/cubit/filterd_meals_cubit.dart';
import 'package:mealtracker/features/filteredMealScreen/controller/cubit/filterd_meals_state.dart';
import 'package:mealtracker/features/filteredMealScreen/ui/widgets/meals_screen_grid_view_builder.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  void initState() {
    context.read<FilterdMealsCubit>().getMealsByCategory(widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<FilterdMealsCubit, FilterdMealsState>(
        builder: (context, state) {
          return state.when(
            filterMealsLoading:
                () => Center(child: CircularProgressIndicator()),
            filterMealsSuccess: (meals) {
              return MealsScreenGridViewBuilder(listOfMeals: meals);
            },
            filterMealsError: (error) {
              return Text(error!);
            },
          );
        },
      ),
    );
  }
}
