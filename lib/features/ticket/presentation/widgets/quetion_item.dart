import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/all_constants.dart';
import '../../data/models/quetion_model.dart';
import '../bloc/ticket_bloc/ticket_bloc.dart';

class QuetionItem extends StatefulWidget {
  const QuetionItem({
    super.key,
    required this.quetionModel,
  });
  final QuetionModel quetionModel;

  @override
  State<QuetionItem> createState() => _QuetionItemState();
}

class _QuetionItemState extends State<QuetionItem> {
  int correctindex = -1;
  int errorIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              margin:
                  EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 24.h),
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 13.h),
              decoration: BoxDecoration(
                color: AppColors.whitef8,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Savol:',
                    style: AppTextStyles.body18w6,
                  ),
                  Text(
                    'Ushbu yo’l belgisiga to’g’ri tarifni belgilang:',
                    style: AppTextStyles.b3Medium.copyWith(
                      color: AppColors.black3c,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 210.h,
              alignment: Alignment.center,
              child: SvgPicture.asset(widget.quetionModel.image),
            ),
            ...List.generate(
              widget.quetionModel.listAnswers.length,
              (index) => InkWell(
                onTap: () {
                  // context.read<TicketBloc>().add(SelectAnswer(
                  //       quetionModel: widget.quetionModel,
                  //       selectedIndex: index,
                  //     ));
                  if (widget.quetionModel.listAnswers[index] ==
                      widget.quetionModel.correctAnswer) {
                    setState(() {
                      correctindex = index;
                    });
                  } else {
                    setState(() {
                      errorIndex = index;
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: index == correctindex
                        ? AppColors.green
                        : errorIndex == index
                            ? AppColors.red
                            : AppColors.whitef8,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    widget.quetionModel.listAnswers[index],
                    style: AppTextStyles.body14w5.copyWith(
                      color: index == correctindex || index == errorIndex
                          ? AppColors.white
                          : AppColors.black3c,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: state is TicketErrorState,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 23.w).copyWith(top: 26.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To’g’ri javob:', style: AppTextStyles.body18w6),
                    const SizedBox(height: 4),
                    Text(
                      widget.quetionModel.correctAnswer,
                      style: AppTextStyles.body14w5.copyWith(
                        color: AppColors.black3c,
                      ),
                    ),
                    // const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: AppDecorations.buttonStyle(
                        size: Size(double.maxFinite, 55.h),
                        borderRadius: 10.r,
                        bgColor: AppColors.blue,
                      ),
                      child: Text(
                        'Davom etish',
                        style: AppTextStyles.body14w5.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
