import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/config/constants/local_data.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:exam/features/ticket/data/models/quetion_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/number_indicator_item.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Namunalar',
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
            QuetionItem(
              quetionModel: listQuetions[0],
            ),
          ],
        ),
      ),
    );
  }
}

class QuetionItem extends StatelessWidget {
  const QuetionItem({
    super.key,
    required this.quetionModel,
  });
  final QuetionModel quetionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 24.h),
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
        SizedBox(
          height: 210.h,
          child: SvgPicture.asset(quetionModel.image),
        ),
        ...List.generate(
          quetionModel.listAnswers.length,
          (index) => Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.whitef8,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              quetionModel.listAnswers[index],
              style: AppTextStyles.body14w5.copyWith(
                color: AppColors.black3c,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
