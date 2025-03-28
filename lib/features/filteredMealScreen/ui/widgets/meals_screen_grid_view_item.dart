import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/core/themes/text_style.dart';

class MealsScreenGridViewItem extends StatelessWidget {
  const MealsScreenGridViewItem({
    super.key,
    required this.index,
    required this.mealName,
    required this.imageLink,
    required this.mealId,
  });
  final String mealName;
  final String imageLink;
  final int index;
  final String mealId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(mealId),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100.w,
              height: 120.h,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageLink)),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
            ),
          ),
          
          Text(
            " $mealName",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle.mainText(context).copyWith(
              color: ColorsManger.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
