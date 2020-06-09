import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wizard_of_legend_tracker/app/locator.dart';
import 'package:wizard_of_legend_tracker/app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wizard of Legend Tracker',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Mojang')),
      initialRoute: Routes.homeViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
