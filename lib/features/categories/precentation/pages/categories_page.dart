import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../home/presentation/widgets/custom_icon_conatiner.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.wall[0],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.icons.arrowLeft),
        ),
        title: Text('Bo’limlar bo’yicha', style: AppTextStyles.body14w5),
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

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.name,
    required this.count,
    required this.icon,
    required this.iconBgColor,
    required this.onTap,
  });
  final String name;
  final int count;
  final String icon;
  final Color iconBgColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.h,
        margin: EdgeInsets.symmetric(vertical: 5.h),
        padding: EdgeInsets.only(left: 8.w, right: 20.w),
        decoration: BoxDecoration(
          color: AppColors.whitef8,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            CustomIconContainer(
              color: iconBgColor,
              icon: icon,
            ),
            SizedBox(width: 18.w),
            Text(
              name,
              style: AppTextStyles.body14w5,
            ),
            const Spacer(),
            Text(
              count.toString(),
              style: AppTextStyles.body14w6.copyWith(
                color: AppColors.blue,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
