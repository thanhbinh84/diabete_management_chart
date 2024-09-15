import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge/blocs/theme/theme_states.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';


class ChartCubit extends Cubit<ThemeState> {
  final BaseChartRepository chartRepository;
  List<ChartData> cachedChartDataList = [];

  ChartCubit({required this.chartRepository}) : super(ThemeState.initial());

  getChartData({Period? period}) async {
    try {
      period ??= state.period;
      emit(state.copyWith(dataStatus: DataStatus.loading));
      if (cachedChartDataList.isEmpty) {
        cachedChartDataList = await chartRepository.getChartData(period);
      }
      List<ChartData> filteredChartDataList = cachedChartDataList
          .where((element) =>
              period!.start.compareTo(element.timestamp) <= 0 &&
              period.end.compareTo(element.timestamp) >= 0)
          .toList();

      emit(state.copyWith(
          chartDataList: filteredChartDataList, period: period, dataStatus: DataStatus.success));
    } catch (e) {
      emit(state.copyWith(dataStatus: DataStatus.failure));
    }
  }

  showValue(Criteria criteria) {
    if (DataStatus.success != state.dataStatus) return;
    emit(state.copyWith(dataStatus: DataStatus.loading));
    List<ChartData> sortedList = List.from(state.chartDataList);
    sortedList.sort((ChartData d1, ChartData d2) => d1.value.compareTo(d2.value));
    ChartData? selectedChartData;
    int midIndex = (state.chartDataList.length / 2).round();
    switch (criteria) {
      case Criteria.avg:
        double value = _getAvg();
        selectedChartData = ChartData(state.chartDataList[midIndex].timestamp, value);
        break;
      case Criteria.max:
        selectedChartData = sortedList.last;
        break;
      case Criteria.med:
        selectedChartData = sortedList[midIndex];
        break;
      case Criteria.min:
        selectedChartData = sortedList.first;
        break;
    }
    emit(state.copyWith(
        selectedChartData: selectedChartData, criteria: criteria, dataStatus: DataStatus.success));
  }

  _getAvg() {
    double sum = 0;
    if (state.chartDataList.isEmpty) return sum;

    for (var element in state.chartDataList) {
      sum += element.value;
    }
    return sum / state.chartDataList.length;
  }
}
