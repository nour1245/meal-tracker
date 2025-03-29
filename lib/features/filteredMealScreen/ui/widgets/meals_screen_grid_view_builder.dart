import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/widgets/grid_view.dart';
import 'package:mealtracker/features/filteredMealScreen/data/models/filter_categories_response_model.dart';
import 'package:mealtracker/features/filteredMealScreen/ui/widgets/meals_screen_grid_view_item.dart';

class MealsScreenGridViewBuilder extends StatelessWidget {
  const MealsScreenGridViewBuilder({super.key, required this.listOfMeals});
  final List<Meal> listOfMeals;
  @override
  Widget build(BuildContext context) {
    return GenericGridView(
      itemCount: listOfMeals.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5.h,
        crossAxisSpacing: 2.w
      ),
      itemBuilder:
          (context, index) => MealsScreenGridViewItem(
            index: index,
            mealName: listOfMeals[index].mealName,
            imageLink: listOfMeals[index].mealPhotoLink,
            mealId: listOfMeals[index].mealId,
          ),
    );
  }
}
