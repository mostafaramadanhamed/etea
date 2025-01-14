

import 'package:flutter/material.dart';

import '../../../../core/theme/text_styles.dart';

class TextIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onPressed;
  final Color color;
  const TextIconButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyles.font12LightGreyRegular.copyWith(
              color: color,
            ),
          ),
          Icon(icon, color: color),
        ],
      ),
    );
  }
}
