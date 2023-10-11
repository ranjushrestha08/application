import 'package:application/repo/login_repo.dart';
import 'package:application/view/dash_screen.dart';
import 'package:application/view/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

import '../../util/custom_snackbar.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
      loading.show(message: "PLease wait ..");
      await LoginRepo.login(
        email: emailController.text,
        password: passwordController.text,
        onSuccess: (message) async {
          loading.hide();
          CustomSnackBar.success(
              title: "Login", message: "Login Successfully");
          Get.offAll(() =>  DashScreen());
        },
        onError: (message) {
          loading.hide();
          CustomSnackBar.error(title: "Login", message: message);
        },
      );
    }
  }
}
