import 'package:bloc/bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';

class ChartCubit extends Cubit<ChartState> {
  final BaseChartRepository chartRepository;

  ChartCubit({required this.chartRepository}) : super(ChartState.initial());

  getChartData({Period? period}) async {
    try {
      period ??= state.period;
      emit(state.copyWith(dataStatus: DataLoadStatus.loading));
      List<ChartData> chartDataList = state.chartDataList;
      if (chartDataList.isEmpty) {
        chartDataList = await chartRepository.getChartData(period);
      }
      List<ChartData> newChartDataList = chartDataList
          .where((element) =>
              period!.start.compareTo(element.timestamp) <= 0 &&
              period.end.compareTo(element.timestamp) >= 0)
          .toList();
      emit(state.copyWith(chartDataList: newChartDataList, period: period, dataStatus: DataLoadStatus.success));
    } catch (e) {
      emit(state.copyWith(dataStatus: DataLoadStatus.failure));
    }
  }
}
