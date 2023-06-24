import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/all_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.onBack,
    this.traling,
  });
  final String title;
  final Function() onBack;
  final Widget? traling;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.wall[0],
      centerTitle: true,
      leading: IconButton(
        onPressed: onBack,
        icon: SvgPicture.asset(Assets.icons.arrowLeft),
      ),
      title: Text(title, style: AppTextStyles.body14w5),
      actions: [traling ?? const SizedBox.shrink()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
