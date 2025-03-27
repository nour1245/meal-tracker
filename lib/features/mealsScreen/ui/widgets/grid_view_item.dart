import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('object'),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100.w,
              height: 120.h,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
            ),
          ),

          Text("data$index", style: TextStyle(color: Colors.amber)),
        ],
      ),
    );
  }
}
