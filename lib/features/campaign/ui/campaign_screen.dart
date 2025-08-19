import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/core/widget/custom_app_bar.dart';
import 'package:my_flyn/features/campaign/ui/widget/custome_container.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        appBar: CustomAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text('캠페인 매칭', style: TextStyles.font28BlackSemiBold),
            ),
            verticalSpace(30),
            TabBar(
              labelColor: ColorsManager.black,
              indicatorColor: ColorsManager.mainLightMauve,
              labelStyle: TextStyles.font16BlackSemiBold,
              unselectedLabelStyle: TextStyles.font16TabGraySemiBold,
              indicatorWeight: 1.5,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.tab,

              tabs: [
                Tab(text: "진행 중"),
                Tab(text: "대기 중"),
                Tab(text: "완료됨"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.w,
                      vertical: 20.h,
                    ),
                    child: ListView.separated(
                      itemCount: 10,
                      separatorBuilder: (context, index) => verticalSpace(15.h),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 335.w,
                          height: 100.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 100.h,
                                child: Image.asset('assets/images/natural.png'),
                              ),
                              horizontalSpace(10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '회사명 나오는 자리',
                                      style: TextStyles.font14BlackSemiBold,
                                    ),
                                    verticalSpace(4),
                                    Text(
                                      '소개말 나오는 자리입니다 한줄만 나옵니다. 소개말 나...',
                                      style: TextStyles.font13TabGrayRegular,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        CustomContainer(
                                          width: 36.w,
                                          height: 23.h,
                                          text: "F&B",
                                        ),
                                        horizontalSpace(4.w),
                                        CustomContainer(
                                          width: 36.w,
                                          height: 23.h,
                                          text: "패션",
                                        ),
                                        horizontalSpace(4.w),

                                        CustomContainer(
                                          width: 56.w,
                                          height: 23.h,
                                          text: "육아/키즈",
                                        ),
                                        horizontalSpace(4.w),

                                        CustomContainer(
                                          width: 73.w,
                                          height: 23.h,
                                          text: "리빙/인테리어",
                                        ),
                                      ],
                                    ),
                                    verticalSpace(4),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Center(child: Text("진행중")),
                  Center(child: Text("완료")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
