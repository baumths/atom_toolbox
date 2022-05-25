import 'package:flutter/material.dart';

import '../app/app.dart';

abstract class AppRoutes {
  static const landing = '/';
  static const installation = '/installation';
  static const home = '/home';

  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.landing: (_) => const LandingView(),
      AppRoutes.installation: (_) => const InstallationView(),
      AppRoutes.home: (_) => const HomeView(),
    };
  }
}
