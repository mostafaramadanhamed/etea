import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/routing/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:etea/core/widgets/app_text_button.dart';
import 'package:etea/core/widgets/app_text_form_filed.dart';
import 'package:etea/core/theme/app_colors.dart';
import 'package:etea/core/theme/text_styles.dart';
import '../login/widgets/social_login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                36.ph,
                Text(
                  'Create an\naccount',
                  style: TextStyles.font34WhiteBold
                      .copyWith(color: Colors.black, height: 1.2),
                ),
                33.ph,
                const AppTextFormField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                31.ph,
                const AppTextFormField(
                  hintText: 'Password',
                  isObscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),  
                31.ph,

                const AppTextFormField(
                  hintText: 'Confirm Password',
                  isObscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                19.ph,
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'By clicking the Register button, you agree to the public offer',
                    style: TextStyles.font14LightGreySemiBold,
                  ),
                ),
                38.ph,
                AppTextButton(
                  buttonText: 'Create Account',
                  onPressed: () {},
                ),
                40.ph,
                const SocialLogin(),
                28.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyles.font14LightGreySemiBold,
                    ),
                    8.pw,
                    GestureDetector(
                      onTap: () {
                      context.pop();
                        
                      },
                      child: Text(
                        'Login',
                        style: TextStyles.font14LightGreySemiBold
                            .copyWith(color: AppColors.primaryRed),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
