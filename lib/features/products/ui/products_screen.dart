import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/features/home/ui/widget/home_app_bar.dart';

import '../../../core/theme/text_styles.dart';
import '../../home/ui/widget/search_bar.dart';
import '../../home/ui/widget/text_icon_button.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            16.ph,
            const HomeSearchBar(),
            16.ph,
            Row(
              children: [
                Text(
                  '52,082+ Items',
                  style: TextStyles.font18Bold,
                ),
                const Spacer(),
                TextIconButton(
                  text: 'Sort',
                  icon: Icons.swap_vert,
                  onPressed: () {},
                ),
                8.pw,
                TextIconButton(
                  text: 'Filter',
                  icon: Icons.filter_alt_outlined,
                  onPressed: () {},
                ),
              ],
            ),
            16.ph,
          ],
        ),
      ),
    );
  }
}
