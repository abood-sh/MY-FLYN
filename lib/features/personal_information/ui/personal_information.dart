import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/routing/routers.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/core/widget/custom_app_bar.dart';
import 'package:my_flyn/features/personal_information/ui/widget/menu_item.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('내정보', style: TextStyles.font28BlackSemiBold),
            verticalSpace(30.h),
            GestureDetector(
              onTap: () => context.pushNamed(Routers.baseInfoScreen),
              child: MenuItem(title: '기본 정보'),
            ),
            GestureDetector(
              onTap: () => context.pushNamed(Routers.setPasswordScreen),
              child: MenuItem(title: '배관번호 설정'),
            ),
            MenuItem(title: '관심 카테고리'),
          ],
        ),
      ),
    );
  }
}
