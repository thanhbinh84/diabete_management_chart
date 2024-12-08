
import 'package:dio/dio.dart';
import 'package:tech_challenge/chart/model/period.dart';

abstract class BaseAPI {
  Future<Response> getChartData(Period period);
}

class API extends BaseAPI {
  static final API instance = API._internal();
  late Dio _dio;

  factory API() {
    return instance;
  }

  API._internal() {
    _dio = Dio();
    _dio.options.baseUrl = 'https://s3-de-central.profitbricks.com/una-health-frontend-tech-challenge';
    _dio.options.responseType = ResponseType.json;
    _dio.options.headers['Accept'] = 'application/json';
  }

  @override
  Future<Response> getChartData(Period period) async {
    return await _dio.get("/sample.json");
  }
}
