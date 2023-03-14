// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names

import 'package:get/get.dart';

class AppConstants {
  static const API_URL = 'https://wikilift.es:9158';
  static const String ASSET_IMAGES = "assets/img/";
  static const String ASSET_ANIM = "assets/anim/";
  static const String ASSET_SOUNDS = "assets/sounds/";
  static List<String> FILTER_FIELDS = ['status'.tr, 'employee_number'.tr, 'work_center'.tr, 'all'.tr];
  //static bool IS_LOGGED_IN() => FirebaseAuth.instance.currentUser != null;
  //static Future<String> GET_TOKEN() async => FirebaseAuth.instance.currentUser!.getIdToken();
  static RegExp REGEX_VALID_EMAIL = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static RegExp REGEX_STRONG_PASSWORD = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
}

enum ORDER_STATES { SENT, WORK_IN_PROGRESS, RECEIVED, UNREPARABLE, LOST, ON_TRANSIT }

typedef VoidCallback = void Function();

// VoidCallback requireAuth(VoidCallback callback) {
//   final user = FirebaseAuth.instance.currentUser;
//   if (user != null) {
//     return callback;
//   } else {
//     return () => Get.offNamed('/login');
//   }
// }
