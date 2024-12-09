import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge/app/app.dart';

import '../helper.dart';

void main() {
  testWidgets('App should be loaded properly', (tester) async {
    injectControllers();
    await tester.pumpWidget(App());
  });
}