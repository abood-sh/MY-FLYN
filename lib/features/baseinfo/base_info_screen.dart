import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_flyn/core/helpers/app_regex.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/core/widget/app_text_button.dart';
import 'package:my_flyn/core/widget/app_text_form_field.dart';
import 'package:my_flyn/core/widget/custom_app_bar.dart';
import 'logic/base_info_controller.dart';

class BaseInfoPage extends StatelessWidget {
  const BaseInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BaseInfoController());

    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('기본정보', style: TextStyles.font28BlackSemiBold),
              verticalSpace(40),
              Text("아이디", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "asdf123",
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isIDValid(value)) {
                    return 'Please enter a valid ID Number';
                  }
                  return null;
                },
              ),
              verticalSpace(24),
              Text("이메일", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "asdf123@naver.com",
                hintStyle: TextStyles.font16RegularBlack,
                backgroundColor: ColorsManager.white,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              verticalSpace(24),
              Text("휴대폰 번호", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 52.h,
                      child: AppTextFormField(
                        hintText: "010-1234-5678",
                        hintStyle: TextStyles.font16RegularBlack,
                        backgroundColor: ColorsManager.white,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !AppRegex.isPhoneNumberValid(value)) {
                            return 'Please enter a valid Phone Number';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  horizontalSpace(8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(85.w, 52.h),
                      backgroundColor: ColorsManager.mainLightMauve,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text("변경하기", style: TextStyles.font16WhiteRegular),
                  ),
                ],
              ),
              verticalSpace(24),
              Text("닉네임", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "장발산",
                hintStyle: TextStyles.font16RegularBlack,
                backgroundColor: ColorsManager.white,
                validator: (p0) {},
              ),
              verticalSpace(24),
              Text("인스타그램 아이디", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "ffkdo_sa",
                hintStyle: TextStyles.font16RegularBlack,
                backgroundColor: ColorsManager.white,
                validator: (p0) {},
              ),
              verticalSpace(24),
              Text("대표 작업 링크", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "https://www.naver.com/",
                hintStyle: TextStyles.font16RegularBlack,
                backgroundColor: ColorsManager.white,
                validator: (p0) {},
              ),
              verticalSpace(24),
              Text("포트폴리오", style: TextStyles.font14BlackSemiBold),
              verticalSpace(4),
              AppTextFormField(
                hintText: "포트폴리오.pdf",
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: SvgPicture.asset(
                    'assets/svgs/vector.svg',
                    height: 14.h,
                    width: 14.w,
                    fit: BoxFit.contain,
                  ),
                ),
                hintStyle: TextStyles.font16RegularBlack,
                backgroundColor: ColorsManager.white,
                validator: (value) {},
              ),
              verticalSpace(40),
              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : AppTextButton(
                        buttonText: "저장하기",
                        textStyle: TextStyles.font16WhiteRegular,
                        onPressed: controller.saveForm,
                      ),
              ),
              verticalSpace(10),
              // Show save result message
              Obx(
                () => controller.saveResult.value.isNotEmpty
                    ? Text(
                        controller.saveResult.value,
                        style: TextStyle(color: Colors.green),
                      )
                    : SizedBox.shrink(),
              ),
              verticalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
