import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/routing/navigation_extension.dart';
import 'package:etea/core/theme/app_colors.dart';
import 'package:etea/core/theme/text_styles.dart';
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
                  'https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg',
                  // height: 215.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              16.ph,
              // product size
  
            ],
          ),
        ),
      ),
    );
  }
}
