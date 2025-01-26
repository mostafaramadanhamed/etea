import 'package:etea/core/helper/spacing_extension.dart';
import 'package:etea/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/title_with_text_filed.dart';

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
                  backgroundImage: const AssetImage('assets/images/avatar.png'),
                ),
              ),
              28.ph,
              Text(
                'Personal Details',
                style: TextStyles.font18Bold,
              ),
              20.ph,
              const TitlewithTextFiled(
                title: "Email Address",
                hintText: "momomom@gmail.com",
              ),
              const TitlewithTextFiled(
                  title: "Password", hintText: "********************"),
              const Divider(), 
              28.ph,
              Text(
                'Business Addess Details',
                style: TextStyles.font18Bold,
              ),
              20.ph,
              const TitlewithTextFiled(
                title: "Pin Code",
                hintText: "123456",
              ),
              const TitlewithTextFiled(
                  title: "Address", hintText: "216 street, New York, USA"),
              const TitlewithTextFiled(
                title: "City",
                hintText: "New York",
              ),

              const TitlewithTextFiled(
                title: "State",
                hintText: "New York",
              ),

              const TitlewithTextFiled( 
                title: "Country",
                hintText: "United States",
              ),
              const Divider(),
              28.ph,
              Text(
                'Bank Account Details',
                style: TextStyles.font18Bold,
              ),
              20.ph,
              const TitlewithTextFiled(
                title: "Bank Account Number",
                hintText: "1234567XXXXXXXXXXXX",
              ),
              const TitlewithTextFiled(
                  title: "Account Holder Name", hintText: "John Doe"),
              const TitlewithTextFiled(
                title:"IFSC Code",
                hintText: "SBIN0000001",  
              ),

            ],
          ),
        ),
      ),
    );
  }
}
