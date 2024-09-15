import 'package:equatable/equatable.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/models/chart_data.dart';

class ThemeState extends Equatable {
  const ThemeState(
      {required this.chartDataList,
      required this.period,
      required this.dataStatus,
      this.criteria,
      this.selectedChartData});

  final List<ChartData> chartDataList;
  final DataStatus dataStatus;
  final Period period;
  final Criteria? criteria;
  final ChartData? selectedChartData;

  ThemeState.initial()
      : this(
            chartDataList: [],
            dataStatus: DataStatus.initial,
            period: Period(Period.minDate, Period.maxDate));

  ThemeState copyWith(
      {List<ChartData>? chartDataList,
      DataStatus? dataStatus,
      Period? period,
      ChartData? selectedChartData,
      Criteria? criteria}) {
    return ThemeState(
        chartDataList: chartDataList ?? this.chartDataList,
        period: period ?? this.period,
        dataStatus: dataStatus ?? this.dataStatus,
        selectedChartData: selectedChartData ?? this.selectedChartData,
        criteria: criteria ?? this.criteria);
  }

  @override
  List<Object> get props => [
        chartDataList,
        period,
        dataStatus,
        criteria ?? Criteria.min,
        selectedChartData ?? ChartData(Period.minDate, 0)
      ];
}
