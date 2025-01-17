import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class ETeaApp extends StatelessWidget {
  final AppRouter appRouter;
  const ETeaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'ETea',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xffF9F9F9),
            ),
            scaffoldBackgroundColor: const Color(0xffF9F9F9)),
        initialRoute: Routes.home,
        onGenerateRoute: appRouter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
