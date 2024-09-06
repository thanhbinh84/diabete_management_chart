class ChartData {
  double value = 0;
  DateTime timestamp = DateTime.now();

  ChartData(this.timestamp, this.value);

  static const keyRoot = 'bloodGlucoseSamples';
  static const keyValue = 'value';
  static const keyTimestamp = 'timestamp';

  ChartData.fromJson(Map<String, dynamic> map) {
    value = double.parse(map[keyValue]);
    timestamp = DateTime.parse(map[keyTimestamp]);
  }
}
