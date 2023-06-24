import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({
    super.key,
    required this.icon,
    required this.color,
    this.size,
  });
  final String icon;
  final Color color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 10,
          left: 14,
          child: SvgPicture.asset(icon, color: color.withOpacity(.5)),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(7.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              height: size ?? 54.h,
              width: size ?? 54.h,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: color.withOpacity(.12),
                borderRadius: BorderRadius.circular(7.r),
              ),
            ),
          ),
        ),
        SvgPicture.asset(icon),
      ],
    );
  }
}
