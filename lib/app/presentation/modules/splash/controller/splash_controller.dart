import 'package:complete_example/app/domain/repositories/auth_repository.dart';
import 'package:flutter_meedu/meedu.dart';

import '../../../routes/routes.dart';

class SplashController extends SimpleNotifier {
  SplashController() {
    _init();
  }

  String? _routeName;
  String? get routeName => _routeName;

  Future<void> _init() async {
    final AuthRespository authRespository = Get.find();
    if (await authRespository.accessToken == null) {
      _routeName = Routes.LOGIN;
    }
    notify();
  }
}
