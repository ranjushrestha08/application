import 'package:application/controller/auth/register_screen_controller.dart';
import 'package:application/util/validators.dart';
import 'package:application/view/auth/login_screen.dart';
import 'package:application/widgets/custom/custom_password_fields.dart';
import 'package:application/widgets/custom/elevated_button.dart';
import 'package:application/widgets/custom/ouline_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/colors.dart';
import '../../widgets/custom/custom_textfields.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final c = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          "Sign up",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppColors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: c.formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "It only takes a moment to create your ",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text(
                  "account",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    controller: c.nameController,
                    validator: Validators.checkFieldEmpty,
                    hint: "Full Name",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    controller: c.phoneNumberController,
                    validator: Validators.checkFieldEmpty,
                    hint: "Phone Number",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    controller: c.emailController,
                    validator: Validators.checkFieldEmpty,
                    hint: "Email",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => CustomPasswordField(
                    hint: "Password",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    controller: c.passwordController,
                    eye: c.passwordObscure.value,
                    onEyeClick: c.onEyeCLick,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.check_box),
                      Text(" I agree to all the "),
                      Text(
                        "Term of services ",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("and")
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    "Privacy policy.",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                    title: "Sign up",
                    onTap: () {
                      c.onSubmit();
                    }),
                const SizedBox(
                  height: 15,
                ),
                CustomOutlinedButton(title: "Cancel", onTap: () {}),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          minimumSize: const Size(300, 50),
                          backgroundColor:
                              const Color.fromARGB(188, 255, 255, 255)),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: NetworkImage(
                                  "https://blog.hubspot.com/hubfs/image8-2.jpg"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Sign up with Google",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 10),
                  child: Row(
                    children: [
                      const Text("Already registerd? ",
                          style: TextStyle(color: Colors.grey)),
                      InkResponse(
                        child: const Text("Sign in",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        },
                      ),
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
