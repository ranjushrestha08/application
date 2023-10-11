import 'package:application/view/auth/login_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => LoginScreen());
    });
    super.onInit();
  }
}
