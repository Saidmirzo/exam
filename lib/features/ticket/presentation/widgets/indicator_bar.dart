import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/ticket_bloc/ticket_bloc.dart';
import 'number_indicator_item.dart';

class QuetionIdicatorBar extends StatelessWidget {
  const QuetionIdicatorBar({
    super.key, required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => NumberIdicatorItem(
            index: index + 1,
            indicatorState: context.read<TicketBloc>().indeicatorSates[index],
          ),
        ),
      ),
    );
  }
}
