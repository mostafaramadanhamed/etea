

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';
import 'text_icon_button.dart';

class DealOfDayTimer extends StatelessWidget {
  const DealOfDayTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(8.r)),
        height: 60.h,
        padding: EdgeInsets.all(8.w),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deals of the Day',
                style: TextStyles.font16Medium.copyWith(
                    color: Colors.white),
              ),
              Text(
                '⏳ 22h 30m 20s remaining',
                style: TextStyles.font12LightGreyRegular.copyWith(
                    color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          TextIconButton(
            text: ' View All  ',
            icon: Icons.arrow_forward,
            color: Colors.white,
            backgroundColor:Colors.transparent,
            onPressed: () {},
          ),
        ]));
  }
}
