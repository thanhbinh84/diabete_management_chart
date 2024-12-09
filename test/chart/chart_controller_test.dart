import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/core/repository/chart_repos.dart';

import '../shared_mock.mocks.dart';

void main() {
  test('Throw error when something went wrong', () async {
    final mockChartRepository = Get.put<ChartRepository>(MockChartRepository());
    when(mockChartRepository.getChartData(any))
        .thenThrow(Exception('Something went wrong'));
    final chartController = Get.put(ChartController());
    expect(chartController.status.isError, true);
  });
}
