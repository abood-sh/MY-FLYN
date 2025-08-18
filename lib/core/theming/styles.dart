import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font20BlackRegular = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Pretendard',
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle font28BlackSemiBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.black,
  );
  static TextStyle font12GraySemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.gray,
  );
  static TextStyle font20mainLightMauveSemiBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainLightMauve,
  );

  static TextStyle font14BlackSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.black,
  );
}
