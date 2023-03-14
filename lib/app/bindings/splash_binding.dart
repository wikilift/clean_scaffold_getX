import 'package:get/get.dart';
import 'package:noe_multi_service/app/controller/splash_controller.dart';
import 'package:noe_multi_service/app/data/provider/splash_provider.dart';
import 'package:noe_multi_service/app/data/repository/splash_repository.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(SplashRepository(SplashProvider())));
  }
}
