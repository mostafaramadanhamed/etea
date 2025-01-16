import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:etea/features/home/ui/widget/search_bar.dart';

import 'widget/auto_scroll_banner.dart';
import 'widget/categories_list_view.dart';
import 'widget/deal_of_day_timer.dart';
import 'widget/deals_product_list_view.dart';
import 'widget/home_app_bar.dart';
import 'widget/text_icon_button.dart';
import 'widget/trending_products_row.dart';

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
              // offers banner auto scroll
              const AutoScrollBanner(),
              32.ph,
              // deal of the day timer
              const DealOfDayTimer(),
              16.ph,
              // Deals of the day products
              const DealsProductListView(),
              16.ph,
              // trending products
              const TrendingProductsRow(),
              16.ph,
              // trending products
              const DealsProductListView(
                isTrending: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
