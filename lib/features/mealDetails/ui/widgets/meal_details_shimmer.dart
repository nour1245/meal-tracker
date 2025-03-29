import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class MealDetailsShimmer extends StatelessWidget {
  const MealDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder
            Container(
              width: double.infinity,
              height: 250.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            SizedBox(height: 5.h),
            // Name and area row
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 20.h,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 20.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            // Ingredients header
            Container(
              width: 100.w,
              height: 20.h,
              color: Colors.white,
            ),
            SizedBox(height: 5.h),
            // Ingredients list
            ...List.generate(5, (index) => Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Container(
                width: double.infinity,
                height: 16.h,
                color: Colors.white,
              ),
            )),
            SizedBox(height: 10.h),
            // Instructions
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120.w,
                  height: 20.h,
                  color: Colors.white,
                ),
                SizedBox(height: 8.h),
                ...List.generate(4, (index) => Padding(
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Container(
                    width: double.infinity,
                    height: 14.h,
                    color: Colors.white,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}