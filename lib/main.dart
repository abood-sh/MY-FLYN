import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/routing/app_router.dart';
import 'package:my_flyn/core/routing/routers.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/features/flyn/ui/flyn_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyFlyn(appRouter: AppRouter()));
}

class MyFlyn extends StatelessWidget {
  final AppRouter appRouter;

  const MyFlyn({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'My Flyn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.mainMauve),
          fontFamily: "Pretendard",
        ),
        home: const FlynPage(),
        initialRoute: Routers.myFlynScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
