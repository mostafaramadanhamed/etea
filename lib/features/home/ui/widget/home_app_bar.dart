import 'package:etea/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

AppBar buildHomeAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.density_medium_outlined),
        onPressed: () {},
      ),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 32,
            width: 39,
          ),
          8.pw,
          Text(
            'ETea',
            style: TextStyles.font18Bold
                .copyWith(color: AppColors.lightBlue, letterSpacing: 1.5),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
       InkWell(
        onTap: (){
          ///TODO navigate to profile screen
        } ,
         child: CircleAvatar(
           radius: 20.r,
            backgroundImage: const AssetImage('assets/images/avatar.png'),
         ),
       ),
       8.pw,
      ],
    );
  }
