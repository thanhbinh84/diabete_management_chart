import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tech_challenge/app/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.chart,
      getPages: Routes.routes,
    );
  }
}