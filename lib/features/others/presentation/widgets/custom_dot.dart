import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key, this.color, this.size,
  });
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:size?? 10.h,
      width:size?? 10.h,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color:color?? AppColors.red,
      ),
    );
  }
}