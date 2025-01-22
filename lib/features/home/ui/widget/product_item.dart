import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class OfferProductItem extends StatelessWidget {
  final bool isTrending;
  const OfferProductItem({
    required this.isTrending,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      margin: EdgeInsets.only(right: 12.w),
      width: isTrending ? 148.w : 170.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://images.pexels.com/photos/415612/pexels-photo-415612.jpeg?auto=compress&cs=tinysrgb&w=600',
            height: 100.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          4.ph,
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product name
                Text(
                  'Product Name',
                  style: TextStyles.font12LightGreyRegular.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.6),
                ),
                4.ph,

                // product price
                Text(
                  '₹ 200',
                  style: TextStyles.font12LightGreyRegular.copyWith(
                    color: Colors.black,
                  ),
                ),
                4.ph,
                // product price before discount
                Row(
                  children: [
                    Text(
                      '₹ 300',
                      style: TextStyles.font12LightGreyRegular.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    4.pw,
                    Text(
                      '33% off',
                      style: TextStyles.font12LightGreyRegular
                          .copyWith(color: AppColors.primaryRed),
                    ),
                  ],
                ),
                4.ph,
                // product  rating
                isTrending
                    ? Container()
                    : Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.yellow,
                          ),
                          4.pw,
                          Text(
                            '4.5',
                            style: TextStyles.font12LightGreyRegular,
                          ),
                          4.pw,
                          Text(
                            '(26780)',
                            style: TextStyles.font12LightGreyRegular,
                          ),
                        ],
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
