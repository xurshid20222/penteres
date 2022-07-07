// Dependency Injection
// Singleton

import 'package:get/get.dart';


import '../pages/home/home_page_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}