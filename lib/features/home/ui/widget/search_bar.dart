import 'package:flutter/material.dart';

import '../../../../core/theme/text_styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: const WidgetStatePropertyAll(1),
      hintText: 'Search any Product',
      hintStyle: WidgetStateProperty.all(
        TextStyles.font14LightGreySemiBold,
      ),
      leading: const Icon(Icons.search, color: Colors.grey),
      trailing: const <Widget>[
        Icon(Icons.mic_none_rounded, color: Colors.grey),
      ],
      backgroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      )),
    );
  }
}
