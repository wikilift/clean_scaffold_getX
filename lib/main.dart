import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noe_multi_service/app/bindings/splash_binding.dart';
import 'package:noe_multi_service/app/routes/pages.dart';
import 'package:noe_multi_service/app/translation/app_translation.dart';
import 'package:noe_multi_service/app/ui/pages/splash_page/splash_page.dart';
import 'package:noe_multi_service/app/ui/theme/light_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeDataLight,
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    getPages: AppPages.pages,
    // home:const SplashPage(),
    title: 'Otis CRPO Service Tool',
    locale: Get.deviceLocale,
    fallbackLocale: const Locale("en_US"),
    translationsKeys: AppTranslation.translationKeys,
  ));
}
