import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noe_multi_service/app/middleware/auth_middleware.dart';
import 'package:noe_multi_service/app/routes/pages.dart';
import 'package:noe_multi_service/app/ui/global/error_page_widget.dart';

import '../../constants/app_constants.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;

  const CustomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (GetPlatform.isMobile) {
          return const ErrorPageWidget(message: 'No mobile version allowed');
        }
        // else if (constraints.maxWidth < 150 || constraints.maxHeight < 150) {
        //   return _getMaximize();
        // }
        else {
          return Scaffold(
              body: child,
              floatingActionButtonLocation: (Get.currentRoute == 'landing' ||
                      Get.currentRoute == '/splash' ||
                      Get.currentRoute == 'splash' ||
                      Get.currentRoute == '/login' ||
                      Get.currentRoute == 'login' ||
                      Get.currentRoute == '/landing')
                  ? null
                  : FloatingActionButtonLocation.startFloat,
              floatingActionButton: (Get.currentRoute == 'landing' ||
                      Get.currentRoute == '/splash' ||
                      Get.currentRoute == 'splash' ||
                      Get.currentRoute == '/login' ||
                      Get.currentRoute == 'login' ||
                      Get.currentRoute == '/landing')
                  ? null
                  : Tooltip(
                      message: 'home'.tr,
                      child: FloatingActionButton(
                        onPressed: () {
                          Get.offAllNamed(AuthMiddleware().redirect(Routes.INITIAL).name.toString());
                        },
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        foregroundColor: Colors.white,
                        elevation: 4,
                        child: const Icon(Icons.home),
                      ),
                    ));
        }
      },
    );
  }

  // Widget _getMaximize() => Center(
  //       child: Stack(children: [
  //         const BackgroundWidget(imagePath: '${AppConstants.ASSET_IMAGES}sky.jpg'),
  //         Center(
  //           child: Text(
  //             'maximize'.tr,
  //             style: appStandarText(fontSize: H0, shadow: true, color: Colors.white),
  //             textAlign: TextAlign.center,
  //             softWrap: true,
  //           ),
  //         )
  //       ]),
  //     );
}
