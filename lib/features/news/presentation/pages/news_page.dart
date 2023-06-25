import 'package:exam/config/constants/assets.dart';
import 'package:exam/config/constants/local_data.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/news_item.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Yangiliklar',
        traling: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: SvgPicture.asset(
            Assets.icons.doubleTick,
          ),
        ),
      ),
      body: WallWidget(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20.h),
          itemCount: listNews.length,
          itemBuilder: (context, index) {
            return NewsItem(newsModel: listNews[index],);
          },
        ),
      ),
    );
  }
}
