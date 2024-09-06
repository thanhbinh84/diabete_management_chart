import 'package:equatable/equatable.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/models/chart_data.dart';

class ChartState extends Equatable {
  const ChartState({required this.chartDataList, required this.period, required this.dataStatus});

  final List<ChartData> chartDataList;
  final DataLoadStatus dataStatus;
  final Period period;

  ChartState.initial()
      : this(
            chartDataList: [],
            dataStatus: DataLoadStatus.initial,
            period: Period(Period.minDate, Period.maxDate));

  ChartState copyWith({
    List<ChartData>? chartDataList,
    DataLoadStatus? dataStatus,
    Period? period,
  }) {
    return ChartState(
        chartDataList: chartDataList ?? this.chartDataList,
        period: period ?? this.period,
        dataStatus: dataStatus ?? this.dataStatus);
  }

  @override
  List<Object> get props => [chartDataList, period, dataStatus];
}
