import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/routing/navigation_extension.dart';
import 'package:etea/core/routing/routes.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:etea/core/widgets/app_text_button.dart';
import 'package:etea/features/onboarding/data/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/build_dot.dart';
import 'widgets/build_top_bar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      itemCount: sliders.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              24.ph,
              BuildTopBar(index: index),
              110.ph,
              SvgPicture.asset(
                sliders[index].image,
                height: 350.h,
              ),
              15.ph,
              Text(
                sliders[index].title,
                style: TextStyles.font24ExtraBold,
              ),
              10.ph,
              Text(
                sliders[index].description,
                style: TextStyles.font14LightGreySemiBold,
                textAlign: TextAlign.center,
              ),
              24.ph,
              index == sliders.length - 1
                  ? AppTextButton(
                      buttonText: 'Get Started',
                      onPressed: () {
                        context.pushReplacementNamed(Routes.login);
                      })
                  : Container(),
              const Spacer(),
              BuildDot(index: index),
              12.ph,
            ],
          ),
        );
      },
    ));
  }
}
