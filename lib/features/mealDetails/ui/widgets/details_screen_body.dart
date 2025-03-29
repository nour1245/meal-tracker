import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/text_style.dart';
import 'package:mealtracker/features/mealDetails/data/models/meal_details_response_model.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key, required this.mealDetails});
  final Meal mealDetails;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mealImage(),
          SizedBox(height: 5.h),
          mealNameAndArea(context),
          SizedBox(height: 5.h),
          Text("Ingredients : ", style: AppTextStyle.headText(context)),
          ..._buildIngredientsAndMeasures(mealDetails, context),
          SizedBox(height: 10.r),
          instructions(context),
        ],
      ),
    );
  }

  List<Widget> _buildIngredientsAndMeasures(Meal meal, BuildContext context) {
    List<String?> ingredients = [
      meal.ingredient1,
      meal.ingredient2,
      meal.ingredient3,
      meal.ingredient4,
      meal.ingredient5,
      meal.ingredient6,
      meal.ingredient7,
      meal.ingredient8,
      meal.ingredient9,
      meal.ingredient10,
      meal.ingredient11,
      meal.ingredient12,
      meal.ingredient13,
      meal.ingredient14,
      meal.ingredient15,
      meal.ingredient16,
      meal.ingredient17,
      meal.ingredient18,
      meal.ingredient19,
      meal.ingredient20,
    ];

    List<String?> measures = [
      meal.measure1,
      meal.measure2,
      meal.measure3,
      meal.measure4,
      meal.measure5,
      meal.measure6,
      meal.measure7,
      meal.measure8,
      meal.measure9,
      meal.measure10,
      meal.measure11,
      meal.measure12,
      meal.measure13,
      meal.measure14,
      meal.measure15,
      meal.measure16,
      meal.measure17,
      meal.measure18,
      meal.measure19,
      meal.measure20,
    ];

    List<Widget> widgets = [];
    for (int i = 0; i < ingredients.length; i++) {
      final ingredient = ingredients[i];
      final measure = measures[i];
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

  Column instructions(BuildContext context) {
    return Column(
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
                text: mealDetails.instructions!,
                style: AppTextStyle.mainText(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row mealNameAndArea(BuildContext context) {
    return Row(
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
                  text: mealDetails.mealName!,
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
                  text: mealDetails.mealArea!,
                  style: AppTextStyle.mainText(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  CachedNetworkImage mealImage() {
    return CachedNetworkImage(
      imageUrl: mealDetails.mealPhoto!,
      imageBuilder:
          (context, imageProvider) => Container(
            width: double.infinity,
            height: 250.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: imageProvider,
              ),
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.black),
            ),
          ),
    );
  }
}
