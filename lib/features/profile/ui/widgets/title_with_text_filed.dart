

import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_text_form_filed.dart';

class TitlewithTextFiled extends StatelessWidget {
  final String title;
  final String hintText;
  const TitlewithTextFiled({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        15.ph,
        AppTextFormField(
          hintText: hintText,
          backgroundColor: Colors.white,
        ),
        28.ph,
      ],
    );
  }
}
