import 'package:dio/dio.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/models/chart_data.dart';
import 'package:tech_challenge/data/services/api.dart';

abstract class BaseChartRepository {
  Future<List<ChartData>> getChartData(Period period);
}

class ChartRepository extends BaseChartRepository {
  final BaseAPI api;
  ChartRepository({required this.api});

  @override
  Future<List<ChartData>> getChartData(Period period) async {
    Response response = await api.getChartData(period);
    List<ChartData> list = (response.data[ChartData.keyRoot] as List)
        .map<ChartData>((e) => ChartData.fromJson(e))
        .toList();
    return list;
  }
}
