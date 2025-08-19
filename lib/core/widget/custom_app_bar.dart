import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/theming/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: ColorsManager.moreBlack,
          weight: 7.w,
          size: 24.h,
        ),
        onPressed: () => context.pop(),
      ),
    );
  }
}
