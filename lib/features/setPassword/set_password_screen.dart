import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/core/widget/app_text_form_field.dart';
import 'package:my_flyn/core/widget/custom_app_bar.dart';

class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('기본정보', style: TextStyles.font28BlackSemiBold),
            verticalSpace(40),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "기본 비밀번호",
                    style: TextStyles.font14BlackSemiBold,
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            verticalSpace(4),
            AppTextFormField(
              hintText: "8-16자리 영문, 숫자, 특수문자 조합",
              hintStyle: TextStyles.font16GrayRegular,
              backgroundColor: ColorsManager.white,

              validator: (p0) {},
            ),
            verticalSpace(24),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "새 비밀번호",
                    style: TextStyles.font14BlackSemiBold,
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            verticalSpace(4),
            AppTextFormField(
              hintText: "8-16자리 영문, 숫자, 특수문자 조합",
              hintStyle: TextStyles.font16GrayRegular,
              backgroundColor: ColorsManager.white,

              validator: (p0) {},
            ),
            verticalSpace(24),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "비밀번호 확인",
                    style: TextStyles.font14BlackSemiBold,
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            verticalSpace(4),
            AppTextFormField(
              hintText: "비밀번호를 재입력해 주세요.",
              hintStyle: TextStyles.font16GrayRegular,
              backgroundColor: ColorsManager.white,

              validator: (p0) {},
            ),
          ],
        ),
      ),
    );
  }
}
