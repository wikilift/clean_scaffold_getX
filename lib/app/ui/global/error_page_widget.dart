import 'package:flutter/material.dart';

class ErrorPageWidget extends StatelessWidget {
  const ErrorPageWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }

  // Widget _getMaximize(String message) => Center(
  //       child: Stack(children: [
  //         const BackgroundWidget(imagePath: '${AppConstants.ASSET_IMAGES}sky.jpg'),
  //         Column(
  //           children: [
  //             Text(
  //               message,
  //               style: appStandarText(fontSize: H0, shadow: true, color: Colors.white),
  //               textAlign: TextAlign.center,
  //               softWrap: true,
  //             ),
  //             Center(child: SpinKitWave(color: Colors.blue.withOpacity(0.5), size: 100)),
  //           ],
  //         )
  //       ]),
  //     );
}
