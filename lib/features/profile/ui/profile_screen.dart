import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.ph,
              Align(
                alignment: AlignmentDirectional.center,
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
