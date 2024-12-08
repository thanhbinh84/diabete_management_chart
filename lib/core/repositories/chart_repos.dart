import 'package:dio/dio.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tech_challenge/chart/models/chart_data.dart';
import 'package:tech_challenge/chart/models/period.dart';
import 'package:tech_challenge/core/services/api.dart';

abstract class BaseChartRepository {
  Future<List<ChartData>> getChartData(Period period);
}

class ChartRepository extends BaseChartRepository {
  final API api = Get.find<API>();

  @override
  Future<List<ChartData>> getChartData(Period period) async {
    Response response = await api.getChartData(period);
    List<ChartData> list = (response.data[ChartData.keyRoot] as List)
        .map<ChartData>((e) => ChartData.fromJson(e))
        .toList();
    return list;
  }
}
