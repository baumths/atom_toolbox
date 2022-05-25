import 'package:atom_toolbox/src/app/app.dart';
import 'package:flutter/material.dart';

import 'src/core/core.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: AppRoutes.landing,
      routes: AppRoutes.routes,
    );
  }
}
