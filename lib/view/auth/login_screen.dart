import 'package:application/controller/auth/login_screen_controller.dart';
import 'package:application/util/colors.dart';
import 'package:application/view/auth/register_screen.dart';
import 'package:application/widgets/custom/custom_textfields.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/validators.dart';
import '../../widgets/custom/custom_password_fields.dart';
import '../../widgets/custom/elevated_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final d = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
          child: Form(
            key: d.formKey,
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    controller: d.emailController,
                    validator: Validators.checkFieldEmpty,
                    hint: "Email",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => CustomPasswordField(
                    validator: Validators.checkFieldEmpty,
                    hint: "Password",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    controller: d.passwordController,
                    eye: d.passwordObscure.value,
                    onEyeClick: d.onEyeCLick,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                    title: "Login",
                    onTap: () {
                      d.onSubmit();
                    }),
                const Text("Forget Password?"),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      const Text("New Here? "),
                      InkResponse(
                        child: const Text(
                          "Sign up ",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Get.to(() => RegisterScreen());
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return RegisterScreen();
                          // }));
                        },
                      ),
                      const Text("now.")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
