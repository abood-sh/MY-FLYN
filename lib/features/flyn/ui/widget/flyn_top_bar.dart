import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';

class FlynTopBar extends StatelessWidget {
  const FlynTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("안녕하세요,", style: TextStyles.font20BlackRegular),
            verticalSpace(5),
            Text("홍길동님", style: TextStyles.font28BlackSemiBold),
          ],
        ),
        Spacer(),
        SizedBox(
          width: 80.w,
          height: 80.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.lightGray,
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svgs/camera.svg"), // camera icon
                verticalSpace(4),
                Text(
                  "이미지 등록",
                  style: TextStyle(fontSize: 10, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
