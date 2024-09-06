import 'package:bloc/bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';

class ChartCubit extends Cubit<ChartState> {
  final BaseChartRepository chartRepository;
  ChartCubit({required this.chartRepository}) : super(ChartInitial());

  getChartData({Period? period}) async {
    try {
      period ??= Period(DateTime.utc(2020), DateTime.now());
      emit(ChartLoadInProgress());
      List<ChartData> newChartDataList = await chartRepository.getChartData(period);
      emit(ChartLoadSuccess(chartData: newChartDataList,period: period));
    } catch (e) {
      emit(ChartFailure(e.toString()));
    }
  }
}
