import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';
import 'package:tech_challenge/data/services/mocks/mock_api.dart';

void main() {
  late ChartRepository chartRepository;
  late ChartCubit chartCubit;
  var period = Period(DateTime(2021, 2, 10), DateTime(2021, 2, 11));
  var api = MockAPI();

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    chartRepository = ChartRepository(api: api);
    chartCubit = ChartCubit(chartRepository: chartRepository);
  });

  blocTest('filter correctly',
      build: () => chartCubit,
      act: (cubit) {
        cubit.getChartData(period: period);
      },
      wait: const Duration(seconds: 1),
      expect: () => [isA<ChartState>(), isA<ChartState>()..having((p0) => p0.chartDataList.length, "chartDataList", 2)]);
}
