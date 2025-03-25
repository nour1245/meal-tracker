import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerMealList extends StatelessWidget {
  const ShimmerMealList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 15, // Number of shimmer items
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            children: [
              ListTile(
                title: Container(
                  width: double.infinity,
                  height: 16.0,
                  color: Colors.white,
                ),
                subtitle: Container(
                  width: double.infinity,
                  height: 14.0,
                  color: Colors.white,
                ),
              ),
              Divider(height: 0),
            ],
          ),
        );
      },
    );
  }
}