import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/chart/model/period.dart';
import 'package:tech_challenge/chart/spline_chart_widget.dart';
import 'package:tech_challenge/core/enums.dart';
import 'package:tech_challenge/core/widget/base_screen.dart';

class ChartScreen extends GetView<ChartController> {
  const ChartScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      controller: controller,
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _filterView(context),
          const Divider(),
          Expanded(child: _chartView()),
          _minMaxView(),
          _avgMedView()
        ]),
      ),
    );
  }

  _filterView(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _startButton(context),
        const SizedBox(
          width: 20,
        ),
        _endButton(context),
      ],
    );
  }

  _chartView() {
    return SplineChartWidget();
  }

  _getChart({Period? period}) {
    controller.getChartData(period: period);
  }

  _startButton(context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectStartDate(context),
        child: const Text('Start'),
      ),
    );
  }

  Future<void> _selectStartDate(context) async {
    Period period = controller.period.value;
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: period.start,
        lastDate: period.end.subtract(const Duration(days: 1)),
        firstDate: Period.minDate);
    if (picked != null && picked != period.start) {
      period.start = picked;
      _getChart(period: period);
    }
  }

  _endButton(context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectEndDate(context),
        child: const Text('End'),
      ),
    );
  }

  Future<void> _selectEndDate(context) async {
    Period period = controller.period.value;
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: period.end,
        lastDate: Period.maxDate,
        firstDate: period.start.add(const Duration(days: 1)));
    if (picked != null && picked != period.end) {
      period.end = picked;
      _getChart(period: period);
    }
  }

  _minMaxView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _criteriaButton(Criteria.min),
        const SizedBox(
          width: 20,
        ),
        _criteriaButton(Criteria.max),
      ],
    );
  }

  _avgMedView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _criteriaButton(Criteria.avg),
        const SizedBox(
          width: 20,
        ),
        _criteriaButton(Criteria.med),
      ],
    );
  }

  _criteriaButton(Criteria criteria) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          controller.showValue(criteria);
          // Navigator.pushNamed(context, ScreenRouter.secondScreen);
        },
        child: Text(criteria.name),
      ),
    );
  }
}
