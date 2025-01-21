import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/routing/navigation_extension.dart';
import 'package:etea/core/theme/app_colors.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:etea/features/home/ui/widget/text_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDeatails extends StatelessWidget {
  const ProductDeatails({super.key});

  static final sizes = ['6 UK', '7 UK', '8 UK', '9 UK', '10 UK'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.ph,
              // product image
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.network(
                  'https://images.unsplash.com/photo-1579446650032-86effeeb3389?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  // height: 215.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              16.ph,
              // product size
              Text('Size: 7UK'),
              16.ph,
              // product sizes list view
              SizedBox(
                height: 35.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 50.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(
                            color: AppColors.lightRed,
                            width: 1.5,
                          )),
                      child: Text(
                        sizes[index],
                        style: TextStyles.font14LightGreySemiBold.copyWith(
                          color: AppColors.lightRed,
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                  separatorBuilder: (context, index) => 8.pw,
                ),
              ),
              16.ph,
              // product name
              Text(
                'Nike Sneakers',
                style: TextStyles.font18Bold,
              ),
              8.ph,
              // product subtitle
              Text(
                'Vision Alta Men\'s Shoes All Colors',
                style: TextStyles.font14Regular,
              ),
              8.ph,
              //product rating
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    Icons.star_half_rounded,
                    color: Colors.grey,
                  ),
                  8.pw,
                  Text('56,890', style: TextStyles.font14Regular),
                ],
              ),
              8.ph,
              // product price
              Row(
                children: [
                  Text(
                    '\$2,999',
                    style: TextStyles.font14LightGreySemiBold
                        .copyWith(decoration: TextDecoration.lineThrough),
                  ),
                  8.pw,
                  Text(
                    '\$1,500',
                    style: TextStyles.font16Medium,
                  ),
                  8.pw,
                  Text(
                    '50% Off',
                    style: TextStyles.font14LightGreySemiBold.copyWith(
                      color: AppColors.lightRed,
                    ),
                  ),
                ],
              ),
                16.ph,
              // product description
              Text(
                'Product Details ',
                style: TextStyles.font16Medium,
              ),
              8.ph,
              Text(
                'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                style: TextStyles.font12LightGreyRegular.copyWith(
                  color: Colors.black,
                ),
              ),
              8.ph,
              // product features
              Row(
                children: [
                  TextIconButton(
                    icon: Icons.location_on_outlined,
                    text: "Nearset Store",
                    color: Colors.grey,
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    borderColor: AppColors.lightGrey,
                  ),
                  8.pw,
                  TextIconButton(
                    icon: Icons.lock_outline_rounded,
                    text: "VIP",
                    color: Colors.grey,
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    borderColor: AppColors.lightGrey,
                  ),
                  8.pw,
                  TextIconButton(
                    icon: Icons.restore_sharp,
                    text: "Return policy",
                    color: Colors.grey,
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    borderColor: AppColors.lightGrey,
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
