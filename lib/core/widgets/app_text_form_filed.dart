import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? label;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final Function(String)? onChanged;
  const AppTextFormField({
    super.key,
    this.maxLength,
    this.onChanged,
    this.contentPadding,
    this.maxLines,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.keyboardType,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      
      maxLength: maxLength,
      keyboardType: keyboardType ?? TextInputType.text,
      controller: controller,
      maxLines: isObscureText == true ? 1 : maxLines,
      validator: (value) {
        return validator?.call(value);
      },
      decoration: InputDecoration(
        filled: true,
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  color:Colors.grey,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                color:Colors.grey,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(10.0.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16.0.r),
          ),
        //  hintStyle: hintStyle ?? TextStyles.font15Regular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          labelText: label,
          alignLabelWithHint: true
          //  fillColor: backgroundColor ??Colors.green.moreLightGray,
          //  filled: true,
          ),
      obscureText: isObscureText ?? false,
     // style: TextStyles.font15SemiBold,
    );
  }
}