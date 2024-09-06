import 'package:bloc/bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/common/utils.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';

class ChartCubit extends Cubit<ChartState> {
  final BaseChartRepository chartRepository;
  List<ChartData> cachedChartDataList = [];

  ChartCubit({required this.chartRepository}) : super(ChartState.initial());

  getChartData({Period? period}) async {
    try {
      period ??= state.period;
      emit(state.copyWith(dataStatus: DataLoadStatus.loading));
      if (cachedChartDataList.isEmpty) {
        cachedChartDataList = await chartRepository.getChartData(period);
      }
      List<ChartData> filteredChartDataList = cachedChartDataList
          .where((element) =>
              period!.start.compareTo(element.timestamp) <= 0 &&
              period.end.compareTo(element.timestamp) >= 0)
          .toList();
      emit(state.copyWith(chartDataList: filteredChartDataList, period: period, dataStatus: DataLoadStatus.success));
    } catch (e) {
      emit(state.copyWith(dataStatus: DataLoadStatus.failure));
    }
  }

  showValue(Criteria criteria) {
    double value = 0;
    switch (criteria) {
      case Criteria.avg:
        value = _getAvg();
        break;
      case Criteria.max:
        value = _getMax();
        break;
      case Criteria.med:
        value = _getMed();
        break;
      case Criteria.min:
        value = _getMin();
        break;
    }
    Utils.toast("${criteria.name }: $value");
  }

  _getMin() {
    double min = double.maxFinite;
    for (var element in state.chartDataList) { if (element.value < min) min = element.value;}
    return min;
  }

  _getMax() {
    double max = double.minPositive;
    for (var element in state.chartDataList) { if (element.value > max) max = element.value;}
    return max;
  }

  _getMed() {
    double sum = 0;
    if (state.chartDataList.isEmpty) return sum;

    for (var element in state.chartDataList) { sum += element.value;}
    return sum/state.chartDataList.length;
  }

  _getAvg() {
    return (_getMin() + _getMax())/2;
  }
}
