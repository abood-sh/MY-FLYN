import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:my_flyn/features/flyn/ui/widget/Campaign_container.dart';
import 'package:my_flyn/features/flyn/ui/widget/flyn_menu_item.dart';
import 'package:my_flyn/features/flyn/ui/widget/flyn_top_bar.dart';

class FlynPage extends StatelessWidget {
  const FlynPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              FlynMenuItem(),
            ],
          ),
        ),
      ),
    );
  }
}
