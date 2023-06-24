import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/all_constants.dart';

class WallWidget extends StatelessWidget {
  const WallWidget({
    super.key,
    required this.child, this.padding,
  });
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:padding?? EdgeInsets.symmetric(horizontal: 23.w).copyWith(top: 38.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.wall,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: child);
  }
}
