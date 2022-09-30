import 'package:complete_example/app/presentation/modules/login/login_page.dart';

import '../modules/splash/view/splash_view.dart';
import 'package:flutter/widgets.dart' show BuildContext, Widget;
import 'routes.dart';
import '../modules/home/view/home_view.dart';

/// WARNING: generated code don't modify directly
Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.HOME: (_) => const HomeView(),
    Routes.LOGIN: (_) => const LoginPage(),
    Routes.SPLASH: (_) => const SplashView(),
  };
}
