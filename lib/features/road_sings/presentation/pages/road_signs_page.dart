import 'package:exam/config/routes/routes.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/all_constants.dart';
import '../../../categories/precentation/widgets/category_item.dart';

class RoadSignsPage extends StatelessWidget {
  const RoadSignsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Yo’l belgilari"),
      body: WallWidget(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CategoryItem(
              name: 'Ogohlantiruvchi belgilar',
              icon: Assets.icons.bumpySign,
              iconBgColor: AppColors.blue,
              onTap: () => Navigator.pushNamed(context, Routes.roadSignsInfoPage),
            ),
            CategoryItem(
              name: 'Imtiyozli belgilar',
              icon: Assets.icons.stopSign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
            CategoryItem(
              name: 'Ta’qiqlovchi belgilar',
              icon: Assets.icons.noEntrySign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
            CategoryItem(
              name: 'Buyuruvchi belgilar',
              icon: Assets.icons.maxSpeedSign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
            CategoryItem(
              name: 'Axborot-ishora belgilari',
              icon: Assets.icons.infoSign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
            CategoryItem(
              name: 'Servis belgilari',
              icon: Assets.icons.airplaneSign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
            CategoryItem(
              name: 'Qo’shimcha axborot belgilari',
              icon: Assets.icons.cameraSign,
              iconBgColor: AppColors.blue,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
