import 'package:exam/config/routes/routes.dart';
import 'package:exam/features/news/data/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/all_constants.dart';
import '../../../others/presentation/widgets/custom_dot.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        Routes.newsMoreInfoPage,
        arguments: {"newsModel": newsModel},
      ),
      child: Container(
        height: 105.h,
        margin: EdgeInsets.symmetric(vertical: 5.h),
        padding: EdgeInsets.only(
          top: 13.h,
          bottom: 10.h,
          right: 14.w,
          left: 16.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.whitef8,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                newsModel.isNew
                    ? CustomDot(
                        color: AppColors.blue,
                        size: 6.h,
                      )
                    : const SizedBox.shrink(),
                Container(
                  width: 295.w,
                  margin: EdgeInsets.only(left: newsModel.isNew ? 11.w : 0),
                  child: Text(
                    newsModel.title,
                    style: AppTextStyles.body14w5,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  newsModel.time,
                  style: AppTextStyles.body12w5.copyWith(
                    color: AppColors.grey4,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(Assets.icons.eye),
                SizedBox(width: 5.w),
                Text(
                  newsModel.views.toString(),
                  style: AppTextStyles.body12w5.copyWith(
                    color: AppColors.grey4,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
