import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/helpers/extensions.dart';
import 'package:mealtracker/core/routing/routes.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/core/themes/text_style.dart';

class CategoryScreenGridViewItem extends StatelessWidget {
  const CategoryScreenGridViewItem({
    super.key,
    required this.index,
    required this.categoryName,
    required this.imageLink,
    required this.categoryId,
  });
  final String categoryName;
  final String imageLink;
  final int index;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>context.pushNamed(Routes.mealsScreen,arguments: categoryName),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100.w,
              height: 120.h,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageLink)),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
            ),
          ),

          Text(" $categoryName", style: AppTextStyle.mainText(context).copyWith(color: ColorsManger.primary,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
