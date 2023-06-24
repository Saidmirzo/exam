import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/features/categories/precentation/widgets/category_item.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Boshqalar',
        onBack: () =>Navigator.pop(context),
      ),
      body: WallWidget(
        padding: EdgeInsets.symmetric(horizontal: 23.w).copyWith(top: 10.h),
        child: Column(
          children: [
            CategoryItem(
              name: 'Yangiliklar',
              count: 1,
              icon: Assets.icons.bell,
              iconBgColor: AppColors.blue,
              onTap: () {},
              traling: Container(
                height: 10.h,
                width: 10.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.red,
                ),
              ),
            ),
            CategoryItem(
              name: 'Statistika',
              count: 1,
              icon: Assets.icons.statistics,
              iconBgColor: AppColors.blue,
              onTap: () {},
              traling: const SizedBox.shrink(),
            ),
            CategoryItem(
              name: 'Jarimalar ro’yixati',
              count: 1,
              icon: Assets.icons.fine,
              iconBgColor: AppColors.blue,
              onTap: () {},
              traling: const SizedBox.shrink(),
            ),
            CategoryItem(
              name: 'Yo’l beilgilari',
              count: 1,
              icon: Assets.icons.route,
              iconBgColor: AppColors.blue,
              onTap: () {},
              traling: const SizedBox.shrink(),
            ),
            CategoryItem(
              name: 'Telegram community',
              count: 1,
              icon: Assets.icons.telegram,
              iconBgColor: AppColors.blue,
              onTap: () {},
              traling: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}