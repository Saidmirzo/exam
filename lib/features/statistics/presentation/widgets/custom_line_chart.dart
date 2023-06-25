import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/all_constants.dart';

// ignore: must_be_immutable
class CustomLineChart extends StatefulWidget {
  CustomLineChart({
    required this.listCoordinates,
    this.height,
    this.width,
    this.colorBorder,
    this.borderWidth,
    this.bgGrid,
    this.showLongPress,
    super.key,
  });


  List<Coordinate> listCoordinates;
  double? height;
  double? width;
  Color? colorBorder;
  double? borderWidth;
  bool? bgGrid;
  bool? showLongPress;

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  bool visibleTouchDate = false;

  @override
  Widget build(BuildContext context) {
    bool show = widget.showLongPress ?? false;

    widget.height = widget.height ?? 20;
    widget.width = widget.width ?? 40;
    return LineChart(
      LineChartData(
        lineTouchData: show
            ? LineTouchData(
                touchCallback: (event, touchResponse) {
                  if (event is FlLongPressStart) {
                    setState(() {
                      visibleTouchDate = true;
                    });
                  }
                  if (event is FlLongPressEnd) {
                    setState(() {
                      visibleTouchDate = false;
                    });
                  }
                },
                handleBuiltInTouches: visibleTouchDate,
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                ),
              )
            : const LineTouchData(enabled: false),
        gridData: FlGridData(
          show: widget.bgGrid ?? false,
          horizontalInterval: 70,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: widget.bgGrid ?? false,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 70,
              getTitlesWidget: leftTitleWidgets,
              reservedSize: 25,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(
            color: const Color(0xff37434d),
          ),
        ),
        minX: 0,
        maxX: widget.width!.toDouble(),
        minY: 0,
        maxY: widget.height!.toDouble(),
        lineBarsData: [
          LineChartBarData(
            spots: List.generate(
              widget.listCoordinates.length,
              (index) {
                return FlSpot(
                  widget.width! * (widget.listCoordinates[index].x) / 100,
                  widget.height! *
                      (100 - widget.listCoordinates[index].y) /
                      100,
                );
              },
            ),
            color: widget.colorBorder ?? Colors.white,
            isCurved: true,
            // isStrokeCapRound: true,
            barWidth: widget.borderWidth ?? 1.2,
            dotData: const FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: false,
             
            ),
          ),
        ],
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = AppTextStyles.body10w4.copyWith(color: AppColors.black);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '200';
        break;
      case 70:
        text = '220';
        break;
      case 140:
        text = '240';
        break;
      case 210:
        text = '260';
        break;
      case 280:
        text = '280';
        break;

      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.right);
  }
}

class Coordinate {
  Coordinate(this.x, this.y);
  double x;
  double y;
}

