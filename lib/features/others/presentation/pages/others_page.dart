import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/config/routes/routes.dart';
import 'package:exam/features/categories/precentation/widgets/category_item.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_dot.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Boshqalar',
      ),
      body: WallWidget(
        padding: EdgeInsets.symmetric(horizontal: 23.w).copyWith(top: 10.h),
        child: Column(
          children: [
            CategoryItem(
              name: 'Yangiliklar',
              icon: Assets.icons.bell,
              iconBgColor: AppColors.blue,
              onTap: () => Navigator.pushNamed(context, Routes.newsPage),
              traling: const CustomDot(),
            ),
            CategoryItem(
              name: 'Statistika',
              icon: Assets.icons.statistics,
              iconBgColor: AppColors.blue,
              onTap: () => Navigator.pushNamed(context, Routes.statisticsPage),
            ),
            CategoryItem(
              name: 'Jarimalar ro’yixati',
              icon: Assets.icons.fine,
              iconBgColor: AppColors.blue,
              onTap: () => Navigator.pushNamed(context, Routes.finesPage),
            ),
            CategoryItem(
              name: 'Yo’l beilgilari',
              icon: Assets.icons.route,
              iconBgColor: AppColors.blue,
              onTap: () => Navigator.pushNamed(context, Routes.roadSignsPage),
            ),
            CategoryItem(
              name: 'Telegram community',
              icon: Assets.icons.telegram,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
