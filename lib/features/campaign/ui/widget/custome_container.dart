import 'package:flutter/material.dart';
import 'package:my_flyn/core/theming/styles.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xffF8F3FE),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(text, style: TextStyles.font10MainLightMauveSemiBold),
      ),
    );
  }
}
