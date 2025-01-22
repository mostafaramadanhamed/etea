import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/routing/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/text_styles.dart';

class ProductItem extends StatelessWidget {
  final double height;
  final int index;
  const ProductItem({super.key, required this.height, required this.index});
 static final List<String> images = [
    "https://uae.microless.com/cdn/no_image.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.productDetail);
      },
      child: Container(
        height: height,
        width: 165.w,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.network(
                images[index],
                height: height / 1.6.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            8.ph,
            //title
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Black Leather Watch',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font16Medium,
                  ),
                  4.ph,
                  //description
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.font12LightGreyRegular.copyWith(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                  ),
      
                  4.ph,
                  Row(
                    children: [
                      //price
                      Text(
                        '\$ 1067',
                        style: TextStyles.font12LightGreyRegular.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '4.5',
                        style: TextStyles.font12LightGreyRegular
                            .copyWith(color: Colors.black),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text(
                        '(12)',
                        style: TextStyles.font12LightGreyRegular,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
