import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Namunalar',
        onBack: () {},
        traling: Container(
          height: 28.h,
          width: 77.w,
          margin: EdgeInsets.only(right: 24.w),
          decoration: BoxDecoration(
              color: AppColors.timeBgColor,
              borderRadius: BorderRadius.circular(34.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.time),
              SizedBox(width: 3.w),
              Text('00:59', style: AppTextStyles.body14w5),
            ],
          ),
        ),
      ),
      body: WallWidget(
        padding: EdgeInsets.only(top: 10.h),
        child: Column(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => NumberIdicatorItem(
                    index: index + 1,
                    indicatorState: IndicatorState.complated,
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin:
                  EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 24.h),
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 13.h),
              decoration: BoxDecoration(
                color: AppColors.whitef8,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Savol:',
                    style: AppTextStyles.body18w6,
                  ),
                  Text(
                    'Ushbu yo’l belgisiga to’g’ri tarifni belgilang:',
                    style: AppTextStyles.b3Medium.copyWith(
                      color: AppColors.black3c,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: ,
            )
          ],
        ),
      ),
    );
  }
}

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
