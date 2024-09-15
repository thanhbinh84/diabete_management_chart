import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/common/enums.dart';
import 'package:tech_challenge/views/screens/spline_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_challenge/common/utils.dart';
import 'package:tech_challenge/data/models/period.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ChartCubit _chartCubit;

  @override
  void initState() {
    _chartCubit = BlocProvider.of<ChartCubit>(context);
    _getChart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChartCubit, ChartState>(
        listener: (context, state) {
          if (state.dataStatus == DataStatus.failure) {
            Utils.errorToast("Something went wrong");
          }
        },
        child: Scaffold(
          body: _mainView(),
        ));
  }

  _mainView() => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _filterView(),
            const Divider(),
            Expanded(child: _chartView()),
            _minMaxView(),
            _avgMedView()
          ]),
        ),
      );

  _filterView() {
    return BlocBuilder<ChartCubit, ChartState>(
        builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _startButton(state),
                const SizedBox(
                  width: 20,
                ),
                _endButton(state),
              ],
            ));
  }

  _chartView() {
    return BlocBuilder<ChartCubit, ChartState>(
      builder: (context, state) {
        return state.dataStatus == DataStatus.loading
            ? SpinKitWave(color: Theme.of(context).primaryColor, size: 25.0)
            : SplineTypes(state.chartDataList, state.period);
      },
    );
  }

  _getChart({Period? period}) {
    _chartCubit.getChartData(period: period);
  }

  _startButton(ChartState state) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectStartDate(state.period),
        child: const Text('Start'),
      ),
    );
  }

  Future<void> _selectStartDate(Period period) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: period.start,
        lastDate: period.end.subtract(const Duration(days: 1)),
        firstDate: Period.minDate);
    if (picked != null && picked != period.start) {
      period.start = picked;
      _getChart(period: period);
    }
  }

  _endButton(ChartState state) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _selectEndDate(state.period),
        child: const Text('End'),
      ),
    );
  }

  Future<void> _selectEndDate(Period period) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: period.end,
        lastDate: Period.maxDate,
        firstDate: period.start.add(const Duration(days: 1)));
    if (picked != null && picked != period.end) {
      period.end = picked;
      _getChart(period: period);
    }
  }

  _minMaxView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _criteriaButton(Criteria.min),
        const SizedBox(
          width: 20,
        ),
        _criteriaButton(Criteria.max),
      ],
    );
  }

  _avgMedView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _criteriaButton(Criteria.avg),
        const SizedBox(
          width: 20,
        ),
        _criteriaButton(Criteria.med),
      ],
    );
  }

  _criteriaButton(Criteria criteria) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          _chartCubit.showValue(criteria);
          // Navigator.pushNamed(context, ScreenRouter.secondScreen);
        },
        child: Text(criteria.name),
      ),
    );
  }
}
