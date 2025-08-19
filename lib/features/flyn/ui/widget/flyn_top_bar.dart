import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flyn/core/helpers/extension.dart';
import 'package:my_flyn/core/helpers/spacing.dart';
import 'package:my_flyn/core/theming/colors.dart';
import 'package:my_flyn/core/theming/styles.dart';
import 'package:get/get.dart';
import 'package:my_flyn/features/flyn/logic/flyn_image_controller.dart';

class FlynTopBar extends StatelessWidget {
  const FlynTopBar({super.key});
  void _showImageSourceDialog(
    BuildContext context,
    FlynImageController controller,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('카메라로 촬영'),
              onTap: () {
                Navigator.pop(context);
                controller.pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('갤러리에서 선택'),
              onTap: () {
                Navigator.pop(context);
                controller.pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final FlynImageController controller = Get.put(FlynImageController());

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
            onPressed: () => _showImageSourceDialog(context, controller),
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
