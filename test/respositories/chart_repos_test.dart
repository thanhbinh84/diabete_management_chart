import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';
import 'package:tech_challenge/data/services/mocks/mock_api.dart';



void main() {
  var api = MockAPI();

  test('Chart repositories get correct data', () async {
    var repo = ChartRepository(api: api);
    List<ChartData> chartDataList = await repo.getChartData(Period(Period.minDate, Period.maxDate));

    expect(chartDataList.length, mockChartDataList);
  });
}