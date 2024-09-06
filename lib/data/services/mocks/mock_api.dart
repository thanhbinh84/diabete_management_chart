import 'dart:async';

import 'package:dio/dio.dart';
import 'package:tech_challenge/data/models/period.dart';
import 'package:tech_challenge/data/services/api.dart';

const periodLength = 7;

class MockAPI extends BaseAPI {
  @override
  Future<Response> getChartData(Period period) async {
    await Future.delayed(const Duration(milliseconds: 500));

    var mockChartData = {
      "bloodGlucoseSamples": [
        {"value": "7.7", "timestamp": "2021-02-10T09:08:00", "unit": "mmol/L"},
        {"value": "7.7", "timestamp": "2021-02-10T09:25:00", "unit": "mg/dl"}
      ]
    };
    Response response = Response(requestOptions: RequestOptions(path: "url"), data: mockChartData);
    return response;
  }
}
