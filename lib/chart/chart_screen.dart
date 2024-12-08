import 'package:flutter/material.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/chart/models/period.dart';
import 'package:tech_challenge/chart/spline_chart_widget.dart';
import 'package:tech_challenge/core/enums.dart';
import 'package:tech_challenge/core/widget/base_screen.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({
    super.key,
  });

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final ChartController _chartController = ChartController.to;

  @override
  void initState() {
    _getChart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      controller: _chartController,
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _filterView(),
          const Divider(),
          Expanded(child: _chartView()),
          _minMaxView(),
          _avgMedView()
        ]),
      ),
    );
  }

  _filterView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _startButton(),
        const SizedBox(
          width: 20,
        ),
        _endButton(),
      ],
    );
  }

  _chartView() {
    return SplineChartWidget();
  }

  _getChart({Period? period}) {
    _chartController.getChartData(period: period);
  }

  _startButton() {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectStartDate(),
        child: const Text('Start'),
      ),
    );
  }

  Future<void> _selectStartDate() async {
    Period period = _chartController.period.value;
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

  _endButton() {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectEndDate(),
        child: const Text('End'),
      ),
    );
  }

  Future<void> _selectEndDate() async {
    Period period = _chartController.period.value;
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
          _chartController.showValue(criteria);
          // Navigator.pushNamed(context, ScreenRouter.secondScreen);
        },
        child: Text(criteria.name),
      ),
    );
  }
}
