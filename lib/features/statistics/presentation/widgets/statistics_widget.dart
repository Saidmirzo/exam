import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/all_constants.dart';
import '../../../home/presentation/widgets/custom_progress_indicator.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({
    super.key, this.margin,
  });
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      margin: margin,
      // width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomProgressIndicator(
            color: AppColors.blue,
            value: 89,
            name: 'Umumiy',
          ),
          CustomProgressIndicator(
            color: AppColors.green,
            value: 63,
            name: 'Muofaqiyatli',
          ),
          CustomProgressIndicator(
            color: AppColors.red,
            value: 26,
            name: 'Muofaqiyatsiz',
          ),
        ],
      ),
    );
  }
}
