import 'package:exam/config/constants/all_constants.dart';
import 'package:exam/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../statistics/presentation/widgets/statistics_widget.dart';
import '../widgets/home_menu_item.dart';
import '../widgets/wall_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WallWidget(
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bo’lajak haydovchi,',
                        style: AppTextStyles.body14w5.copyWith(
                          color: AppColors.grey3,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Jahongir',
                            style: AppTextStyles.body20w6.copyWith(
                              color: AppColors.black1E,
                            ),
                          ),
                          SizedBox(width: 7.w),
                          SvgPicture.asset(Assets.icons.premium),
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              Assets.images.avatar1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: AppColors.ellipse,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(Assets.icons.settings),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
                child: Text(
                  'Imtihonlar statistikasi',
                  style: AppTextStyles.body12w5.copyWith(
                    color: AppColors.black1E,
                  ),
                ),
              ),
              const StatisticsWidget(),
              Container(
                margin: EdgeInsets.only(top: 16.h),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.w,
                    mainAxisSpacing: 14.h,
                    childAspectRatio: 1.12,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return HomeMenuItem(
                      name: listMenuNames[index],
                      icon: listMenuIcons[index],
                      color: listMenuColors[index],
                      ontap: () {
                        if (index == 2) {
                          Navigator.pushNamed(context, Routes.categoriesPage);
                        }
                        if (index == 5) {
                          Navigator.pushNamed(context, Routes.othersPage);
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
