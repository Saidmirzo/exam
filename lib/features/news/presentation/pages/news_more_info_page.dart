import 'package:exam/config/constants/all_constants.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:exam/features/news/data/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsMoreInfoPage extends StatelessWidget {
  const NewsMoreInfoPage({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Yangiliklar",
        onBack: () => Navigator.pop(context),
      ),
      body: WallWidget(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
            decoration: BoxDecoration(
              color: AppColors.whitef8,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                SelectableText(newsModel.title, style: AppTextStyles.body14w6),
                Container(
                  height: 170.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 16.h),
                  child: Image.asset(newsModel.image, fit: BoxFit.cover),
                ),
                SelectableText(
                  newsModel.describe,
                  style: AppTextStyles.body12w5.copyWith(
                    color: AppColors.grey3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
