import 'package:exam/config/constants/local_data.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoadSignsInfoPage extends StatelessWidget {
  const RoadSignsInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Ogohlantiruvchi belgilar'),
      body: WallWidget(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 25,
          ),
          itemCount: 6,
          itemBuilder: (context, index) => Container(
            height: 170.h,
            child: Image.asset(listRoads[index]),
          ),
        ),
      ),
    );
  }
}
