import 'package:exam/config/constants/all_constants.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:exam/features/statistics/presentation/widgets/statistics_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/local_data.dart';
import '../widgets/custom_line_chart.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Statistika",
      ),
      body: WallWidget(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Imtihonlar statistikasi',
            style: AppTextStyles.body12w5.copyWith(
              color: AppColors.black1E,
            ),
          ),
          StatisticsWidget(margin: EdgeInsets.only(top: 12.h, bottom: 16.h)),
          Container(
            height: 160.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.whitef8,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomLineChart(
              height: 285,
              width: 340.w,
              listCoordinates: listCoordinate,
              colorBorder: AppColors.green2,
              borderWidth: 3,
              bgGrid: false,
            ),
          ),
        ],
      )),
    );
  }
}
