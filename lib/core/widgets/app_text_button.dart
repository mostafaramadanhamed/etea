import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    this.textStyle,
    required this.onPressed,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0.r),
            side:
                BorderSide(color: borderColor ?? Colors.greenAccent, width: 2),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? Colors.red,
        ),
     
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 71.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        // style: textStyle ??
        //     TextStyles.font20SemiBold.copyWith(
        //       color: textColor ?? Colors.white,
        //     ),
      ),
    );
  }
}