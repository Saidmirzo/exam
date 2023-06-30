import 'package:exam/config/constants/app_colors.dart';
import 'package:exam/config/constants/app_text_styles.dart';
import 'package:exam/config/constants/assets.dart';
import 'package:exam/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:exam/features/home/presentation/widgets/wall_widget.dart';
import 'package:exam/features/ticket/data/models/quetion_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../bloc/ticket_bloc/ticket_bloc.dart';
import '../widgets/indicator_bar.dart';
import '../widgets/number_indicator_item.dart';
import '../widgets/quetion_item.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: 'Namunalar',
            traling: Container(
              height: 28.h,
              width: 77.w,
              margin: EdgeInsets.only(right: 24.w),
              decoration: BoxDecoration(
                  color: AppColors.timeBgColor,
                  borderRadius: BorderRadius.circular(34.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.time),
                  SizedBox(width: 3.w),
                  Text('00:59', style: AppTextStyles.body14w5),
                ],
              ),
            ),
          ),
          body: WallWidget(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                QuetionIdicatorBar(pageController: pageController),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: List.generate(
                      context.read<TicketBloc>().quetions.length,
                      (index) => QuetionItem(
                        quetionModel:
                            context.read<TicketBloc>().quetions[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
