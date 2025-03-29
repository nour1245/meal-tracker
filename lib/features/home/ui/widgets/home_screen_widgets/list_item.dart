import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/constants/text.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.meal, required this.mealId});

  final MealModel meal;
  final String mealId;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(mealId),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(15.r),
            onPressed: (_) => context.read<HomePageCubit>().deleteMeal(mealId),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        color: ColorsManger.primary,
        child: ListTile(
          title: Text(meal.name),
          subtitle: Text(
            '${meal.calories} ${TextConstants.caloriesAt} ${meal.time}',
          ),
          leading: Container(
            width: 60.r,
            height: 60.r,
            decoration: BoxDecoration(
              color: ColorsManger.secondary,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: FileImage(File(meal.photoPath)),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
