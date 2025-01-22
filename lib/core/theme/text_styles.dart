import 'package:etea/core/helper/font_weight_helper.dart';
import 'package:etea/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static  TextStyle font40PrimarRedBold = TextStyle(
    fontSize: 40.sp,
    color: AppColors.primaryRed,
    fontWeight:FontWeightHelper.bold,
  );

  static  TextStyle font34WhiteBold = TextStyle(
    fontSize: 34.sp,
    color: Colors.white,
    fontWeight:FontWeightHelper.bold,
  );

  static  TextStyle font24ExtraBold = TextStyle(
    fontSize: 24.sp,
    fontWeight:FontWeightHelper.extraBold,
  );

  static  TextStyle font23WhiteSemiBold = TextStyle(
    fontSize: 23.sp,
    color: Colors.white,
    fontWeight:FontWeightHelper.semiBold,
  );

  static  TextStyle font18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight:FontWeightHelper.bold,

  );
  
  static  TextStyle font16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight:FontWeightHelper.medium,

  );

  static  TextStyle font14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight:FontWeightHelper.regular,
  );
  static  TextStyle font14LightGreySemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGrey,
    fontWeight:FontWeightHelper.semiBold,
  );

  static  TextStyle font12LightGreyRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.lightGrey,
    fontWeight:FontWeightHelper.regular,
  );
}