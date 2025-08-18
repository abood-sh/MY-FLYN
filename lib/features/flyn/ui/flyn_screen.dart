import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/features/flyn/ui/widget/Campaign_container.dart';
import 'package:my_flyn/features/flyn/ui/widget/flyn_top_bar.dart';

class FlynPage extends StatelessWidget {
  const FlynPage({super.key});

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
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlynTopBar(),
              verticalSpace(35),
              CampaignContainer(),
              //verticalSpace(10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: svgAssets.length, // Example item count
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 20.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(svgAssets[index]),
                            horizontalSpace(3),
                            Text(
                              title[index],
                              style: TextStyles.font14BlackSemiBold,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.w,
                              weight: 4.73,
                              color: ColorsManager.black,
                            ),
                          ],
                        ),
                        // 👇 Add divider except for the last item
                        if (index != 6) // 6 = itemCount - 1
                          Padding(
                            padding: EdgeInsets.only(top: 12.h),
                            child: Divider(
                              color: Colors.grey.shade300,
                              thickness: 1,
                              height: 1,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
