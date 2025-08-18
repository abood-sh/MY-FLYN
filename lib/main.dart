import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/features/flyn/ui/flyn_screen.dart';

void main() {
  runApp(const MyFlyn());
}

class MyFlyn extends StatelessWidget {
  const MyFlyn({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'My Flyn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.mainMauve),
          fontFamily: "Pretendard",
        ),
        home: const FlynPage(),
      ),
    );
  }
}
