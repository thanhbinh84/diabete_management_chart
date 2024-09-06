enum DataLoadStatus { initial, loading, success, failure }

class Criteria {
  final String name;

  const Criteria._internal(this.name);

  @override
  toString() => 'Enum.$name';

  static const min = Criteria._internal('Minimum');
  static const max = Criteria._internal('Maximum');
  static const avg = Criteria._internal('Average');
  static const med = Criteria._internal('Median');
}
