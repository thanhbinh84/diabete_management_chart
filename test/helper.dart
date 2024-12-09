import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge/app/routes.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/chart/model/chart_data.dart';
import 'package:tech_challenge/chart/model/period.dart';
import 'package:tech_challenge/core/repository/chart_repos.dart';

class ManualMockChartController extends GetxController with Mock implements ChartController {
  @override
  RxStatus get status => RxStatus.success();

  @override
  getChartData({Period? period}) {}

  @override
  Rx<ChartData> get selectedChartData => ChartData().obs;

  @override
  Rx<List<ChartData>> get chartDataList => Rx<List<ChartData>>([]);
}

class ManualMockAppRepository extends Mock implements ChartRepository {
  @override
  Future<List<ChartData>> getChartData(Period? period) async => [];
}

extension PumpGetApp on WidgetTester {
  Future<void> pumpGetApp(Widget widget) async {
    await _setSurfaceSize(binding);
    return pumpWidget(GetMaterialApp(home: widget));
  }

  Future<void> pumpGetAppWithRoute(Widget widget) async {
    await _setSurfaceSize(binding);
    return pumpWidget(GetMaterialApp(
      getPages: Routes.routes,
      home: widget,
    ));
  }
}

_setSurfaceSize(binding) async => await binding.setSurfaceSize(Size(360, 780));

void injectControllers() {
  Get.put<ChartController>(ManualMockChartController());
}

Future<Response> future(Response res) {
  var completer = Completer<Response>();
  completer.complete(res);
  return completer.future;
}
