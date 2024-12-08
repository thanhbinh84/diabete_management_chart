import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_challenge/app/app.dart';
import 'package:tech_challenge/chart/chart_controller.dart';
import 'package:tech_challenge/core/repositories/chart_repos.dart';
import 'package:tech_challenge/core/services/api.dart';
import 'package:tech_challenge/core/utils.dart';

void bootstrap() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initServices();
    runApp(App());
  }, (e, s) => utils.handleError(e, s: s));
}

_initServices() async {
  Get.put(API(), permanent: true);
  Get.put(ChartRepository(), permanent: true);
  Get.lazyPut(() => ChartController());
}

