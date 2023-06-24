import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/all_constants.dart';
import '../../../home/presentation/widgets/custom_icon_conatiner.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.name,
    required this.count,
    required this.icon,
    required this.iconBgColor,
    required this.onTap, this.traling,
  });
  final String name;
  final int count;
  final String icon;
  final Color iconBgColor;
  final Function() onTap;
  final Widget? traling;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.h,
        margin: EdgeInsets.symmetric(vertical: 5.h),
        padding: EdgeInsets.only(left: 8.w, right: 20.w),
        decoration: BoxDecoration(
          color: AppColors.whitef8,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            CustomIconContainer(
              color: iconBgColor,
              icon: icon,
            ),
            SizedBox(width: 18.w),
            Text(
              name,
              style: AppTextStyles.body14w5,
            ),
            const Spacer(),
            traling ??
                Text(
                  count.toString(),
                  style: AppTextStyles.body14w6.copyWith(
                    color: AppColors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.blue,
                  ),
                )
          ],
        ),
      ),
    );
  }
}
