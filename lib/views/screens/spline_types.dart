import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/common/utils.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class SplineTypes extends StatefulWidget {
  final List<ChartData> chartDataList;
  final Period period;

  const SplineTypes(this.chartDataList, this.period, {super.key});

  @override
  State<SplineTypes> createState() => _SplineTypesState();
}

class _SplineTypesState extends State<SplineTypes> {
  _SplineTypesState();

  late SplineType _spline;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _spline = SplineType.natural;
    _tooltipBehavior =
        TooltipBehavior(enable: true, header: '', canShowMarker: true, duration: 20000);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChartCubit, ChartState>(
        listener: (context, state) {
          if (state.dataStatus == DataStatus.success) {
            ChartData? chartData = state.selectedChartData;
            if (chartData != null && state.criteria != null) {
              Utils.toast('${state.criteria!.name}: ${chartData.value} - ${chartData.timestamp}');
              SchedulerBinding.instance.addPostFrameCallback((_) {
                _tooltipBehavior.show(chartData.timestamp, chartData.value);
              });
            }
          }
        },
        child: _buildTypesSplineChart());
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
          dataSource: widget.chartDataList,
          xValueMapper: (ChartData data, _) => data.timestamp,
          yValueMapper: (ChartData data, _) => data.value,
          markerSettings: const MarkerSettings(
              isVisible: false
          ),
          width: 2)
    ];
  }
}
