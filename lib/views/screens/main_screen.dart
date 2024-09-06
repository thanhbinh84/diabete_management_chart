import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/blocs/chart/chart_states.dart';
import 'package:tech_challenge/views/screens/spline_types.dart';
import 'package:flutter/rendering.dart';
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
  _MainScreenState createState() => _MainScreenState();
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
          if (state is ChartFailure) Utils.errorToast(state.error);
        },
        child: Scaffold(
          body: _mainView(),
        ));
  }

  _mainView() =>
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_filterView(), const Divider(), Expanded(child: _chartView())]),
        ),
      );

  _filterView() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () { },
        child: const Text('Start'),
      ),
      TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () { },
        child: const Text('End'),
      )
    ],);
  }

  _chartView() {
    return BlocBuilder<ChartCubit, ChartState>(
      builder: (context, state) {
        return state is ChartLoadInProgress
            ? SpinKitWave(color: Theme
            .of(context)
            .primaryColor, size: 25.0)
            : state is ChartLoadSuccess
            ? SplineTypes(state.chartData, state.period)
            : Container();
      },
    );
  }

  _getChart({Period? period}) {
    _chartCubit.getChartData(period: period);
  }
}
