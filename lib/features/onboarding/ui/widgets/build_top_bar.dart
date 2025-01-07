

import 'package:flutter/material.dart';

import '../../../../core/theme/text_styles.dart';
import '../../data/onboarding_data.dart';

class BuildTopBar extends StatelessWidget {
  final int index;
  const BuildTopBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RichText(
            text: TextSpan(
          text: '${index + 1}',
          style: TextStyles.font18Bold.copyWith(color: Colors.black),
          children: [
            TextSpan(
              text: '/${sliders.length}',
              style: TextStyles.font18Bold.copyWith(color: Colors.grey),
            ),
          ],
        )),
        const Spacer(),
        GestureDetector(
          onTap: () {
            /// todo: navigate to login screen
          },
          child: Text(
            'Skip',
            style: TextStyles.font18Bold,
          ),
        ),
      ],
    );
  }
}
