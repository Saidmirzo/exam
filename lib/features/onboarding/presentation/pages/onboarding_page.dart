import 'dart:async';
import 'dart:developer';

import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        log('ishlayapti');
        if (timer.tick == 1) {
          Navigator.pushReplacementNamed(context, Routes.homePage);
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.images.appLogo),
            SizedBox(height: 16.h),
            SvgPicture.asset(Assets.images.avtomentorText),
          ],
        ),
      ),
    );
  }
}
