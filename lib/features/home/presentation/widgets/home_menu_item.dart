import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/all_constants.dart';
import 'custom_icon_conatiner.dart';

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    required this.icon,
    required this.name,
    required this.color,
    required this.ontap,
  });
  final String icon;
  final String name;
  final Color color;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 100, // (442 / 3).h,
        width: 165.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.whitef8,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconContainer(icon: icon, color: color),
            SizedBox(height: 18.h),
            Text(
              name,
              style: AppTextStyles.body14w5.copyWith(
                color: AppColors.black1E,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
