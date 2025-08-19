import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/routing/routers.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';

class CampaignContainer extends StatelessWidget {
  const CampaignContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 121.h,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorsManager.moreLightGray,
        borderRadius: BorderRadius.circular(8), // rounded corners
        border: Border.all(
          color: ColorsManager.borderGray, // light grey border
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("나의 캠페인", style: TextStyles.font12GraySemiBold),
              GestureDetector(
                onTap: () => context.pushNamed(Routers.campaignScreen),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16.w,
                  weight: 4.73,
                  color: ColorsManager.black,
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("0", style: TextStyles.font20mainLightMauveSemiBold),
                    Text("신청", style: TextStyles.font14BlackSemiBold),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.w,
                  weight: 4.73,
                  color: ColorsManager.lighterGray,
                ),
                Column(
                  children: [
                    Text("0", style: TextStyles.font20mainLightMauveSemiBold),
                    Text("신청", style: TextStyles.font14BlackSemiBold),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.w,
                  weight: 4.73,
                  color: ColorsManager.lighterGray,
                ),
                Column(
                  children: [
                    Text("0", style: TextStyles.font20mainLightMauveSemiBold),
                    Text("신청", style: TextStyles.font14BlackSemiBold),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
