import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';

class SortByDropDown extends StatelessWidget {
  const SortByDropDown({super.key,required this.sortBy});
  final SortBy sortBy;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.h),
      child: DropdownButton<SortBy>(
        iconDisabledColor: ColorsManger.text,
        dropdownColor: ColorsManger.secondary,
        iconEnabledColor: Colors.amberAccent,
        value: sortBy,
        onChanged: (SortBy? newValue) {
          if (newValue != null) {
            context.read<HomePageCubit>().updateSortBy(newValue);
          }
        },
        items:
            SortBy.values.map((SortBy value) {
              return DropdownMenuItem<SortBy>(
                value: value,
                child: Text(
                  value.toString().split('.').last,
                  style: AppTextStyle.mainText(context),
                  ),
              );
            }).toList(),
      ),
    );
  }
}
