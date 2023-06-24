import 'package:exam/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../home/presentation/widgets/custom_app_bar.dart';
import '../widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Bo’limlar bo’yicha',
        onBack: () =>Navigator.pop(context),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 23.w).copyWith(top: 32.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.wall,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [
                CategoryItem(
                  onTap: () {},
                  name: 'Yo’l harakati qoidalari',
                  count: 1131,
                  icon: Assets.icons.way,
                  iconBgColor: AppColors.green,
                ),
                CategoryItem(
                  onTap: () {},
                  name: 'Tibbiy yordam',
                  count: 400,
                  icon: Assets.icons.heart,
                  iconBgColor: AppColors.red,
                ),
                CategoryItem(
                  onTap: () {},
                  name: 'Texnik yordam',
                  count: 340,
                  icon: Assets.icons.engine,
                  iconBgColor: AppColors.blue,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}


