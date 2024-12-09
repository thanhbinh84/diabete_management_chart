import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:tech_challenge/chart/chart_screen.dart';

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
        widget: ChartScreen(),
        name: 'Chart screen',
      )
      ..addScenario(
        widget: ChartScreen(),
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
