import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/text_styles.dart';
import '../../../core/widgets/app_text_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/get started.png',
            fit: BoxFit.cover,
            width: 1.sw,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('You want \nAuthentic, here \nyou go!',
                    textAlign: TextAlign.center,
                    style: TextStyles.font34WhiteBold),
                14.ph,
                Text(
                  'Find it here, buy it now!',
                  style: TextStyles.font14LightGreySemiBold,
                ),
                44.ph,
                AppTextButton(
                  buttonText: 'Get Started',
                  onPressed: () {
                    // Navigator.pushNamed(context, AppRouter.loginScreen);
                  },
                ),
                34.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
