import 'package:exam/config/constants/all_constants.dart';
import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/features/home/presentation/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w).copyWith(top: 38.h),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.wall,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: EdgeInsets.only(top: 23.h, bottom: 12.h),
                child: Text(
                  'Imtihonlar statistikasi',
                  style: AppTextStyles.body12w5.copyWith(
                    color: AppColors.black1E,
                  ),
                ),
              ),
              Container(
                height: 120.h,
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
              ),
              Container(
                height: 550.h,
                margin: EdgeInsets.only(top: 16.h),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.w,
                    mainAxisSpacing: 14.h,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return HomeMenuItem(
                      name: listMenuNames[index],
                      image: listMenuIcons[index],
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

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.h,
      width: 165.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whitef8,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 54.h,
            width: 54.h,
            margin: EdgeInsets.only(bottom: 18.h),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: AppColors.green.withOpacity(.12),
              borderRadius: BorderRadius.circular(7.r),
            ),
            child: SvgPicture.asset(image),
          ),
          Text(
            name,
            style: AppTextStyles.body14w5.copyWith(
              color: AppColors.black1E,
            ),
          ),
        ],
      ),
    );
  }
}
