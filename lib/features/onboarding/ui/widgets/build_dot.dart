
import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDot extends StatelessWidget {
  final int index;
  const BuildDot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: index + 1 == 1 ? 40.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: index + 1 == 1 ? Colors.black : Colors.grey,
          ),
        ),
        8.pw,
        Container(
          width: index + 1 == 2 ? 40.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: index + 1 == 2 ? Colors.black : Colors.grey,
          ),
        ),
        8.pw,
        Container(
          width: index + 1 == 3 ? 40.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: index + 1 == 3 ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}
