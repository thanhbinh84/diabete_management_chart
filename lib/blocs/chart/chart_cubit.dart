import 'package:bloc/bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';

class ChartCubit extends Cubit<ChartState> {
  final BaseChartRepository chartRepository;
  List<ChartData>? chartDataList;

  ChartCubit({required this.chartRepository}) : super(ChartInitial());

  getChartData({Period? period}) async {
    try {
      period ??= Period(Period.minDate, Period.maxDate);
      emit(ChartLoadInProgress());
      chartDataList ??= await chartRepository.getChartData(period);
      List<ChartData> newChartDataList = chartDataList!
          .where((element) =>
              period!.start.compareTo(element.timestamp) <= 0 &&
              period.end.compareTo(element.timestamp) >= 0)
          .toList();
      emit(ChartLoadSuccess(chartData: newChartDataList, period: period));
    } catch (e) {
      emit(ChartFailure(e.toString()));
    }
  }
}
