import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';

class MenuItem extends StatelessWidget {
  final String title;
  const MenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: TextStyles.font14BlackSemiBold),
          trailing: const Icon(Icons.chevron_right, color: ColorsManager.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
          child: Divider(
            height: 1,
            thickness: 1,
            color: ColorsManager.moreLighterGray,
          ),
        ),
      ],
    );
    ;
  }
}
