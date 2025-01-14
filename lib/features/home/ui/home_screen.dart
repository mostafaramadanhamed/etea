import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/features/home/ui/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/home_app_bar.dart';

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
              
            ],
          ),
        ),
      ),
    );
  }
}
