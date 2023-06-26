import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/local_data.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinesPage extends StatelessWidget {
  const FinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double tableSize1 = (width - 26.w) / 3 - 50.w;
    final double tableSize2 = (width - 26.w) / 3 + 80.w;
    return Scaffold(
      appBar: const CustomAppBar(title: "Jarimalar ro’yxati"),
      body: WallWidget(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Table(
              border: TableBorder.all(color: AppColors.blue),
              columnWidths: {
                0: FixedColumnWidth(tableSize1),
                1: FixedColumnWidth(tableSize2),
                2: FixedColumnWidth(tableSize1),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 17.h),
                      alignment: Alignment.center,
                      child: Text(
                        'Modda',
                        style: AppTextStyles.body13w5
                            .copyWith(color: AppColors.green),
                      ),
                    ),
                    Text(
                      'Bandlar',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.body13w5
                          .copyWith(color: AppColors.blue),
                    ),
                    Text(
                      'Jarima summasi',
                      textAlign: TextAlign.center,
                      style:
                          AppTextStyles.body13w5.copyWith(color: AppColors.red),
                    ),
                  ],
                ),
                ...List.generate(
                  listFines.length,
                  (index) => TableRow(
                    children: [
                      Text(
                        "${listFines[index].number}\nmodda",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body13w5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 9.w),
                        child: Text(
                          listFines[index].info,
                          style: AppTextStyles.body13w5,
                        ),
                      ),
                      Text(
                        listFines[index].cost.toString(),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body13w6
                            .copyWith(color: AppColors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          // GridView.count(
          //   crossAxisCount: 3,
          //   childAspectRatio: 1,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          //   children: [
          //     Container(
          //       height: 52.h,
          //       color: AppColors.red,
          //     ),
          //     Container(
          //       height: 52.h,
          //       color: AppColors.red,
          //     ),
          //     Container(
          //       height: 52.h,
          //       color: AppColors.red,
          //     ),
          //     Container(
          //       height: 100.h,
          //       color: AppColors.red,
          //     )
          //   ],
          // ),
          ),
    );
  }
}
