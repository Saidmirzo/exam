import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/all_constants.dart';

class NumberIdicatorItem extends StatelessWidget {
  const NumberIdicatorItem({
    super.key,
    required this.index,
    required this.indicatorState,
  });
  final int index;
  final IndicatorState indicatorState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        indicatorState == IndicatorState.progress
            ? SvgPicture.asset(Assets.icons.arrowDown)
            : const SizedBox.shrink(),
        Container(
          height: 36.h,
          width: 50.w,
          margin: EdgeInsets.symmetric(horizontal: 4.w).copyWith(top: 5.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: switchColor(),
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Text(
            index.toString(),
            style: AppTextStyles.body16w5.copyWith(
              color: indicatorState == IndicatorState.inFuture
                  ? AppColors.grey4
                  : AppColors.white,
            ),
          ),
        ),
      ],
    );
  }

  Color switchColor() {
    switch (indicatorState) {
      case IndicatorState.complated:
        return AppColors.green;
      case IndicatorState.error:
        return AppColors.red;
      case IndicatorState.inFuture:
        return AppColors.grey6;
      case IndicatorState.progress:
        return AppColors.green.withOpacity(.25);

      default:
        return AppColors.green;
    }
  }
}

enum IndicatorState {
  progress,
  error,
  complated,
  inFuture,
}