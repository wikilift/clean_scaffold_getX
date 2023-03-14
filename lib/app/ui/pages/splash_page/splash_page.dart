import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noe_multi_service/app/controller/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('SplashPage')), body: SafeArea(child: Text('SplashController')));
  }
}
