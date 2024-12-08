import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:tech_challenge/blocs/chart/chart_cubit.dart';
import 'package:tech_challenge/data/repositories/chart_repos.dart';
import 'package:tech_challenge/data/services/mocks/mock_api.dart';
import 'package:tech_challenge/chart/chart_screen.dart';

Widget makeWidgetTestable({required Widget child}) {
  return MaterialApp(
      home: MultiBlocProvider(
          providers: [
        BlocProvider<ChartCubit>(
          create: (context) {
            return ChartCubit(chartRepository: ChartRepository(api: MockAPI()));
          },
        ),
      ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: child,
              onGenerateRoute: (_) =>
                  PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                    return const Text('mock page');
                  }))));
}

void main() {
  testGoldens('Chart screen should render correctly on multiple screens', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletPortrait,
        Device.tabletLandscape,
      ])
      ..addScenario(
        widget: makeWidgetTestable(child: const ChartScreen()),
        name: 'Chart screen',
      )
      ..addScenario(
        widget: makeWidgetTestable(child: const ChartScreen()),
        name: 'Click start date',
        onCreate: (scenarioWidgetKey) async {
          final finder = find.descendant(
            of: find.byKey(scenarioWidgetKey),
            matching: find.text('Start'),
          );
          expect(finder, findsOneWidget);
          await tester.tap(finder);
        },
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'multiple_screens_testing');
  });
}
