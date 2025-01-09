

import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/text_styles.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR Countinue with',
          
            style: TextStyles.font14LightGreySemiBold,
        ),
        20.ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               decoration: BoxDecoration(
                color:AppColors.redWhite,
                border: Border.all(color: AppColors.primaryRed),
                shape: BoxShape.circle,
               ),
              child: Image.asset('assets/images/google.png', width: 40.w)),
            8.pw,
            Container(
                decoration: BoxDecoration(
                color:AppColors.redWhite,
                border: Border.all(color: AppColors.primaryRed),
                shape: BoxShape.circle,
               ),
              child: Image.asset('assets/images/apple.png', width: 40.w)),
            8.pw,
            Container(
                decoration: BoxDecoration(
                color:AppColors.redWhite,
                border: Border.all(color: AppColors.primaryRed),
                shape: BoxShape.circle,
               ),
              child: Image.asset('assets/images/facebook.png', width: 40.w)),
          ],
        ),
             
      ],
    );
  }
}
