import 'package:flutter/material.dart';

import '../../../../core/theme/text_styles.dart';

class TextIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onPressed;
  final Color color;
  final Color backgroundColor;
  final Color? borderColor;
  const TextIconButton(
      
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed, this.borderColor,
      this.backgroundColor = Colors.white,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
          side:  WidgetStatePropertyAll(BorderSide(color:borderColor?? Colors.white)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          )),
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
