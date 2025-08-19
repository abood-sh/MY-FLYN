import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/routing/routers.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';

class FlynMenuItem extends StatelessWidget {
  const FlynMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> svgAssets = [
      "assets/svgs/user.svg",
      "assets/svgs/note.svg",
      "assets/svgs/messages.svg",
      "assets/svgs/message-question.svg",
      "assets/svgs/task-square.svg",
      "assets/svgs/logout.svg",
      "assets/svgs/break_away.svg",
    ];
    final List<String> title = [
      "내 정보",
      "공지사항",
      "1:1문의",
      "FAQ",
      "약관 및 정책",
      "로그아웃",
      "회원탈퇴",
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: svgAssets.length, // Example item count
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            switch (index) {
              case 0:
                context.pushNamed(Routers.personalInfoScreen);
                break;
              case 1:
                break;
              case 2:
                break;
              case 3:
                break;
              case 4:
                break;
              case 5:
                break;
              case 6:
                break;
            }
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(svgAssets[index]),
                    horizontalSpace(3),
                    Text(title[index], style: TextStyles.font14BlackSemiBold),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16.w,
                      weight: 4.73,
                      color: ColorsManager.black,
                    ),
                  ],
                ),
                // Add divider except for the last item
                if (index != 6) // 6 = itemCount - 1
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Divider(
                      color: ColorsManager.moreLighterGray,
                      thickness: 1,
                      height: 1,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
