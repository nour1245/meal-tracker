import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/features/mealsScreen/ui/widgets/grid_view_builder.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RPadding(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridViewBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
