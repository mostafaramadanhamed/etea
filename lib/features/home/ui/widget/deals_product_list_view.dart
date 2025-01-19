import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_item.dart';

class DealsProductListView extends StatelessWidget {
  final bool isTrending;
  const DealsProductListView({
    super.key,
    this.isTrending = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isTrending ? 190.h : 230.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return OfferProductItem(
            isTrending: isTrending,
          );
        },
      ),
    );
  }
}
