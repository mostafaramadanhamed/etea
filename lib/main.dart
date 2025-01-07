import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'etea_app.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp( ETeaApp(
    appRouter: AppRouter(),
  ));
}
