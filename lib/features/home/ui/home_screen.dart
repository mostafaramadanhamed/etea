import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:etea/features/home/ui/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/categories_list_view.dart';
import 'widget/home_app_bar.dart';
import 'widget/text_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              16.ph,
              const HomeSearchBar(),
              16.ph,
              Row(
                children: [
                  Text(
                    'All Featured',
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
              Container(
                color: Colors.white,
                height: 90.h,
                child: const CategoriesListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
