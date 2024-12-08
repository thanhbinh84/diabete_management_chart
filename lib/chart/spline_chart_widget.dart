import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/chart/models/chart_data.dart';
import 'package:tech_challenge/core/utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class SplineChartWidget extends StatefulWidget {

  const SplineChartWidget({super.key});

  @override
  State<SplineChartWidget> createState() => _SplineChartWidgetState();
}

class _SplineChartWidgetState extends State<SplineChartWidget> {
  final ChartController _chartController = ChartController.to;
  _SplineChartWidgetState();

  late SplineType _spline;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _spline = SplineType.natural;
    _tooltipBehavior =
        TooltipBehavior(enable: true, header: '', canShowMarker: true, duration: 20000);
    ever(_chartController.selectedChartData, (_) {
      ChartData chartData = _chartController.selectedChartData.value;
      Utils.toast('${_chartController.criteria.value.name}: ${chartData.value} - ${chartData.timestamp}');
      SchedulerBinding.instance.addPostFrameCallback((_) {
        _tooltipBehavior.show(chartData.timestamp, chartData.value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => _buildTypesSplineChart());
  }

  /// Returns the spline types chart.
  SfCartesianChart _buildTypesSplineChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: DateTimeAxis(
        majorGridLines: const MajorGridLines(width: 0),
        dateFormat: DateFormat("d MMM"),
        intervalType: DateTimeIntervalType.auto,
      ),
      primaryYAxis:
          NumericAxis(labelFormat: '{value}', majorTickLines: const MajorTickLines(size: 0)),
      series: _getSplineTypesSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  /// Returns the list of chart series which need to render on the spline chart.
  List<SplineSeries<ChartData, DateTime>> _getSplineTypesSeries() {
    return <SplineSeries<ChartData, DateTime>>[
      SplineSeries<ChartData, DateTime>(
          splineType: _spline,
          dataSource: _chartController.chartDataList.value,
          xValueMapper: (ChartData data, _) => data.timestamp,
          yValueMapper: (ChartData data, _) => data.value,
          markerSettings: const MarkerSettings(
              isVisible: false
          ),
          width: 2)
    ];
  }
}
