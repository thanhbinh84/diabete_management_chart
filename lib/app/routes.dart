import 'package:get/get.dart';
import 'package:tech_challenge/chart/chart_screen.dart';

class Routes {
  static const chart = '/';

  static final routes = [
    GetPage(name: chart, page: () => ChartScreen()),
  ];
}
