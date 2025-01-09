import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/theme/app_colors.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:etea/core/widgets/app_text_button.dart';
import 'package:etea/core/widgets/app_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/social_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Welcome\nBack!',
                  style: TextStyles.font34WhiteBold
                      .copyWith(color: Colors.black, height: 1.2),
                ),
                36.ph,
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
                9.ph,
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font14LightGreySemiBold
                        .copyWith(color: AppColors.primaryRed),
                  ),
                ),
                52.ph,
                AppTextButton(
                  buttonText: 'Login',
                  onPressed: () {},
                ),
                75.ph,
                const SocialLogin() ,
                      28.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create An Account?',
                          style: TextStyles.font14LightGreySemiBold,
                        ),
                        8.pw,
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, AppRouter.signUpScreen);
                          },
                          child: Text(
                            'Sign Up',
                                            
                            style: TextStyles.font14LightGreySemiBold
                                .copyWith(color: AppColors.primaryRed, decoration: TextDecoration.underline),
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
