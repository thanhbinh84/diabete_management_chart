import 'package:get/get.dart';
import 'package:tech_challenge/chart/model/chart_data.dart';
import 'package:tech_challenge/chart/model/period.dart';
import 'package:tech_challenge/core/controller/base_controller.dart';
import 'package:tech_challenge/core/enums.dart';
import 'package:tech_challenge/core/repository/chart_repos.dart';

class ChartController extends BaseController {
  static ChartController get to => Get.find();
  final ChartRepository chartRepository = Get.find<ChartRepository>();
  List<ChartData> cachedChartDataList = [];
  final chartDataList = Rx<List<ChartData>>([]);
  final period = Period(Period.minDate, Period.maxDate).obs;
  final selectedChartData = ChartData().obs;
  final criteria = Criteria.min.obs;

  @override
  void onInit() {
    super.onInit();
    getChartData();
  }

  getChartData({Period? period}) async {
    loading();
    try {
      if (period != null) {
        this.period.value = period;
      }
      if (cachedChartDataList.isEmpty) {
        cachedChartDataList = await chartRepository.getChartData(this.period.value);
      }
      chartDataList.value = cachedChartDataList
          .where((element) =>
              this.period.value.start.compareTo(element.timestamp) <= 0 &&
              this.period.value.end.compareTo(element.timestamp) >= 0)
          .toList();
      success();
    } catch (e) {
      error();
    }
  }

  showValue(Criteria criteria) {
    this.criteria.value = criteria;
    List<ChartData> sortedList = List.from(chartDataList.value);
    sortedList.sort((ChartData d1, ChartData d2) => d1.value.compareTo(d2.value));
    int midIndex = (chartDataList.value.length / 2).round();
    switch (criteria) {
      case Criteria.avg:
        double value = _getAvg();
        selectedChartData.value =
            ChartData(time: chartDataList.value[midIndex].timestamp, value: value);
        break;
      case Criteria.max:
        selectedChartData.value = sortedList.last;
        break;
      case Criteria.med:
        selectedChartData.value = sortedList[midIndex];
        break;
      case Criteria.min:
        selectedChartData.value = sortedList.first;
        break;
    }
    success();
  }

  _getAvg() {
    final chartDataListValue = chartDataList.value;
    double sum = 0;
    if (chartDataListValue.isEmpty) return sum;

    for (var element in chartDataListValue) {
      sum += element.value;
    }
    return sum / chartDataListValue.length;
  }
}
