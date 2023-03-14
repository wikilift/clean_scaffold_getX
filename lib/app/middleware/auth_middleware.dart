import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noe_multi_service/app/routes/pages.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings redirect(String? route) {
    // final auth = FirebaseAuth.instance;
    // return (auth.currentUser != null)
    //     ? RouteSettings(name: route, arguments: auth.currentUser!.email.toString())
    //     : const RouteSettings(name: Routes.LOGIN);
    return const RouteSettings(name: Routes.INITIAL);
  }
}
