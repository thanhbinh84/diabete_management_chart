import 'package:flutter/material.dart';
import 'package:tech_challenge/views/root/screen_router.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    var screenRouter = ScreenRouter();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: screenRouter.generateRoute,
      onUnknownRoute: screenRouter.unknownRoute,
      initialRoute: '/',
    );
  }
}
