import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';
import 'package:tech_challenge/data/services/api.dart';
import 'package:tech_challenge/data/services/mocks/mock_api.dart';
import 'package:tech_challenge/views/screens/main_screen.dart';
import 'package:tech_challenge/views/screens/second_screen.dart';

class ScreenRouter {
  static const root = '/';
  static const secondScreen = 'Second Screen';

  late ChartRepository chartRepository;
  late BaseAPI api;

  ScreenRouter() {
    api = API();
    chartRepository = ChartRepository(api: api);
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    var route = buildPageRoute(settings);

    print('>>>>>>> GOTO: ${settings.name}');
    switch (settings.name) {
      case root:
        return route(const MainScreen());
      case secondScreen:
        return route(const SecondScreen());
      default:
        return unknownRoute(settings);
    }
  }

  Function buildPageRoute(RouteSettings settings) {
    List<BlocProvider> blocProviders = [
      BlocProvider<ChartCubit>(
        create: (context) => ChartCubit(
          chartRepository: chartRepository,
        ),
      ),
    ];

    return (Widget child, {fullScreen = false}) => MaterialPageRoute(
          fullscreenDialog: fullScreen,
          builder: (context) => MultiBlocProvider(
            providers: blocProviders,
            child: child,
          ),
          settings: settings,
        );
  }

  Route<dynamic> unknownRoute(RouteSettings settings) {
    var unknownRouteText = "No such screen for ${settings.name}";

    return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(unknownRouteText),
          const Padding(padding: EdgeInsets.all(10.0)),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Back'),
          ),
        ],
      );
    });
  }
}
