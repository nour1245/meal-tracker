import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';
import 'package:mealtracker/core/themes/text_style.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key, required this.mealDetails});
  final Map<String, String?> mealDetails;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mealImage(),
          SizedBox(height: 5.h),
          mealNameAndArea(context),
          SizedBox(height: 5.h),
          Container(
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: ColorsManger.primary,
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ingredients : ", style: AppTextStyle.headText(context)),
                ..._buildIngredientsAndMeasures(mealDetails, context),
              ],
            ),
          ),
          SizedBox(height: 10.r),
          instructions(context),
        ],
      ),
    );
  }

  List<Widget> _buildIngredientsAndMeasures(
    Map<String, String?> meal,
    BuildContext context,
  ) {
    List<Widget> widgets = [];
    for (int i = 0; i <= 20; i++) {
      final ingredient = meal['strIngredient$i'];
      final measure = meal["strMeasure$i"];
      if (ingredient != null &&
          ingredient.isNotEmpty &&
          measure != null &&
          measure.isNotEmpty) {
        widgets.add(
          Text(
            '$measure $ingredient',
            style: AppTextStyle.mainText(context).copyWith(color: Colors.black),
          ),
        );
        widgets.add(SizedBox(height: 5.h));
      }
    }
    return widgets;
  }

  Container instructions(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: ColorsManger.primary,
        border: Border.all(color: Colors.black),
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Instructions : \n",
                  style: AppTextStyle.headText(context),
                ),
                TextSpan(
                  text: mealDetails["strInstructions"]!,
                  style: AppTextStyle.mainText(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container mealNameAndArea(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: ColorsManger.primary,
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Name : ",
                    style: AppTextStyle.headText(context),
                  ),
                  TextSpan(
                    text: mealDetails["strMeal"],
                    style: AppTextStyle.mainText(context),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Flexible(
            flex: 3,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Area : ",
                    style: AppTextStyle.headText(context),
                  ),
                  TextSpan(
                    text: mealDetails["strArea"],
                    style: AppTextStyle.mainText(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  CachedNetworkImage mealImage() {
    return CachedNetworkImage(
      imageUrl: mealDetails["strMealThumb"]!,
      imageBuilder:
          (context, imageProvider) => Container(
            width: double.infinity,
            height: 250.h,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.black),
            ),
          ),
    );
  }
}
