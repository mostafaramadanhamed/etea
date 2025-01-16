

import 'package:etea/core/routing/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';
import 'text_icon_button.dart';

class TrendingProductsRow extends StatelessWidget {
  const TrendingProductsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.lightRed,
            borderRadius: BorderRadius.circular(8.r)),
        height: 60.h,
        padding: EdgeInsets.all(8.w),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Trending Products',
                style: TextStyles.font16Medium
                    .copyWith(color: Colors.white),
              ),
              Text(
                '📅 Last Date 15/01/25',
                style: TextStyles.font12LightGreyRegular
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          TextIconButton(
            text: ' View All  ',
            icon: Icons.arrow_forward,
            color: Colors.white,
            backgroundColor: Colors.transparent,
            onPressed: () {
              context.pushNamed(Routes.product);

            },
          ),
        ]));
  }
}
