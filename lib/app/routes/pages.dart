import 'package:get/get.dart';
import 'package:noe_multi_service/app/bindings/splash_binding.dart';
import 'package:noe_multi_service/app/ui/pages/splash_page/splash_page.dart';

part './routes.dart';

abstract class AppPages {
  static const TRANSITION_DURATION = 1000;
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    ),
    // GetPage(
    //   name: Routes.LANDING,
    //   page: () => const LandingPage(),
    //   binding: LandingBinding(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // ),
    // GetPage(
    //   name: Routes.REMITER_AND_BRAND,
    //   page: () => const CreateOrderPage(),
    //   binding: CreateOrderBinding(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // ),
    // GetPage(
    //   name: Routes.CRPO_HOME,
    //   page: () => CRPOPage(),
    //   binding: CRPOBinding(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // ),
    // GetPage(
    //   name: Routes.LIST_OF_ORDERS,
    //   page: () => const ListOfOrderPage(),
    //   binding: ListOfOrdersBinding(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // ),
    // GetPage(
    //   name: Routes.ORDER_DETAIL,
    //   page: () => const OrderDetailPage(),
    //   binding: OrderDetailBinding(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // ),
    // GetPage(
    //   name: Routes.SPLASH,
    //   page: () => const SplashPage(),
    //   transition: Transition.cupertino,
    //   transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    // )
  ];
}
